package kr.goott.tour.register;

import kr.goott.tour.home.DBConn;

public class RegisterDAO extends DBConn implements RegisterInterface {

	@Override
	public boolean idCheck(String userId) {
		boolean result = false;
		try {
			dbConn();
			String sql = "select count(userid) from gt_register where userid=? ";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
		    rs = pstmt.executeQuery();
			
			if(rs.next()) {
				if(rs.getInt(1)!=0) {
					result = true;
				}
			}
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("idCheckDAO 에러발생..."+e.getMessage());
		}finally {
			dbClose();
		}
		return result;
	}

	@Override
	public int insertRecord(RegisterVO vo) {
		int cnt=0;
		try {
		
		dbConn();
		
			String sql = "insert into gt_register (num, userid, userpwd, username, "
					+ " tel, zipcode, addr, detailaddr, email, regdate, memtype) "
					+ " values(gt_memsq.nextVal, ?,?,?,?,?,?,?,?, sysdate, ?)";
		
		pstmt = conn.prepareStatement(sql);
		
		pstmt.setString(1, vo.getUserId().trim());
		pstmt.setString(2, vo.getUserPwd());
		pstmt.setString(3, vo.getUserName());
		pstmt.setString(4, vo.getTel());
		pstmt.setString(5, vo.getZipCode());
		pstmt.setString(6, vo.getAddr());
		pstmt.setString(7, vo.getDetailAddr());
		pstmt.setString(8, vo.getEmail());
		pstmt.setString(9, vo.getMemType());
		
		cnt = pstmt.executeUpdate();
		
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("insertRecord에러.."+e.getMessage());
		}finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public void login(RegisterVO vo) {
		try {
			dbConn();
			String sql = "select username, userid from gt_register "
					+ "where userid=? and userpwd=? ";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getUserPwd());
		    rs = pstmt.executeQuery();	
			
			if(rs.next()) {
				vo.setUserName(rs.getString(1));
				vo.setUserId(rs.getString(2));
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("login메소드 DAO 에러발생.."+e.getMessage());
		}finally {
			dbClose();
		}
		
	}

	@Override
	public int updateRecord(RegisterVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void selectRegister(RegisterVO vo) {
		// TODO Auto-generated method stub
		
	}

}
