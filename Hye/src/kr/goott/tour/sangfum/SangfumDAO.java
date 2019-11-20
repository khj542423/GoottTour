package kr.goott.tour.sangfum;

import java.util.ArrayList;
import java.util.List;

import kr.goott.tour.home.DBConn;
import kr.goott.tour.sangfum.SangfumVO;

public class SangfumDAO extends DBConn implements SangfumInterface {
	public List<SangfumVO> findDay() {
		
		List<SangfumVO> lst = new ArrayList<SangfumVO>();
		try {
			dbConn();
			String sql = "select to_char(stDate, 'yyyymmdd') as stDate, max(price) from qwer group by to_char(stDate, 'yyyymmdd')";
			pstmt = conn.prepareStatement(sql);
			rs= pstmt.executeQuery();
			
			if(rs.next()) {
				SangfumVO vo = new SangfumVO();
				vo.setStDate(rs.getString(1));
				vo.setPrice(rs.getInt(2));
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
