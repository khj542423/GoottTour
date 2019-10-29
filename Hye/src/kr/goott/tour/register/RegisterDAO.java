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
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("insertRecord에러.."+e.getMessage());
		}finally {
			dbClose();
		}
		return 0;
	}
	
	
	
	
	

	

}
