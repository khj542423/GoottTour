package kr.goott.tour.manage;

import java.util.ArrayList;
import java.util.List;

import kr.goott.tour.home.DBConn;

public class ManageDAO extends DBConn implements ManageInterface{

	@Override
	public List<ManageVO> selectMem() {
		List<ManageVO> lst = new ArrayList<ManageVO>();
		try {
			dbConn();
			String sql = "select userName, to_char(regDate, 'yyyy-mm-dd') as regDate, TRUNC(MONTHS_BETWEEN(TRUNC(SYSDATE), BIRTHDAY) / 12 )+1 as age, memType, userId, tel, addr, email, num from gt_register";
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			
			while(rs.next()) {
				ManageVO vo = new ManageVO();
				/*
				 * System.out.println(rs.getString(1)); System.out.println(rs.getString(2));
				 * System.out.println(Integer.parseInt(rs.getString(3)));
				 * System.out.println(rs.getString(4));
				 */
				vo.setUserName(rs.getString(1));
				vo.setRegDate(rs.getString(2));
				vo.setAge(Integer.parseInt(rs.getString(3)));
				vo.setMemType(rs.getString(4));
				vo.setUserId(rs.getString(5));
				vo.setTel(rs.getString(6));
				vo.setAddr(rs.getString(7));
				vo.setEmail(rs.getString(8));
				vo.setNum(rs.getInt(9));
				vo.setResCnt(0);
				lst.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			dbClose();
		}
		
		return lst;
	}
	
}
