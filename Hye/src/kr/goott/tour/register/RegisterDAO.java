package kr.goott.tour.register;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import kr.goott.tour.home.DBConn;

public class RegisterDAO extends DBConn implements RegisterInterface {

	@Override
	public boolean idCheck(String userId) {
		boolean result = false;
		try {
			dbConn();
			String sql = "select count(userid) from gt_register where userid=?";
			
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();
			
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
				+ " tel, zipcode, addr, detailaddr, email, memtype) "
				+ " values(gt_memsq.nextVal, ?,?,?,?,?,?,?,?,?)";
		
		PreparedStatement pstmtPreparedStatement = conn.prepareStatement(sql);
		pstmt.setString(1, vo.getUserId().trim());
		pstmt.setString(2, vo.getUserPwd());
		pstmt.setString(3, vo.getUserName());
		pstmt.setString(4, vo.getTel());
		pstmt.setString(5, vo.getZipCode());
		pstmt.setString(6, vo.getAddr());
		pstmt.setString(7, vo.getDetailAddr());
		pstmt.setString(8, vo.getEmail());
		pstmt.setInt(9, vo.getMemtype());
		
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("insertRecord에러.."+e.getMessage());
		}finally {
			dbClose();
		}
		return 0;
	}
	
	
	
	
	

	

}
