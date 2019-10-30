package kr.goott.tour.freeboard;

import java.util.ArrayList;
import java.util.List;

import kr.goott.tour.home.DBConn;

public class BoardDAO extends DBConn implements BoardInterface{

	@Override
	public List<BoardVO> getAllRecord(int pageNum, int onePageRecord, String commuPage, int totalRecord, int totalPage) {
		List<BoardVO> lst = new ArrayList<BoardVO>();
		try {
			dbConn();
			String sql = "select * from (select * from"
					+ " (select*from(select num, rownum no, userid, subject, to_char(regdate,'YYYY-MM-DD'),"
					+ " hit from gt_freeboard where commuPage=? order by num asc) order by no desc)"
					+ " where rownum<=? order by no asc)"
					+ " where rownum<=? order by no desc";

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, commuPage);
			pstmt.setInt(2, pageNum * onePageRecord);
			
			int lr = totalRecord%onePageRecord;
			if(pageNum == totalPage && lr!=0) {
				pstmt.setInt(3, lr);
			}else {
				pstmt.setInt(3, onePageRecord);
			}
			rs = pstmt.executeQuery();

			while (rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setNum(rs.getInt(1));
				vo.setNo(rs.getInt(2));
				vo.setUserId(rs.getString(3));
				vo.setSubject(rs.getString(4));
				vo.setRegDate(rs.getString(5));
				vo.setHit(rs.getInt(6));
				lst.add(vo);
			}

		} catch (Exception e) {
			System.out.println("레코드 전체 선택 에러");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return lst;
	}

	@Override
	public int boardInsert(BoardVO vo) {
		int cnt = 0;
		try {
			dbConn();
			String sql = "insert into gt_freeboard(num, subject, content, userid, hit, regdate, commuPage) values(gtboard_sq.nextval, ?, ?, ?, 0, sysdate, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getSubject());
			pstmt.setString(2, vo.getContent());
			pstmt.setString(3, vo.getUserId());
			pstmt.setString(4, vo.getCommuPage());

			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("레코드 추가 에러");
			e.printStackTrace();
		} finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public int boardUpdate(BoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int boardDelete(int num) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void boardHit(int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int boardTotalRecord(String commuPage) {//총레코드
		int cnt = 0;
		try {
			dbConn();
			String sql = "select count(num) from gt_freeboard where commuPage=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, commuPage);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				cnt = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("총레코드 수 구하기 에러");
		} finally {
			dbClose();
		}
		return cnt;
	}

	@Override
	public void boardSelect(BoardVO vo, boolean a) {
		// TODO Auto-generated method stub
		
	}

}
