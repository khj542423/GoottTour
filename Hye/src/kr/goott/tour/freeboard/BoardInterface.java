package kr.goott.tour.freeboard;

import java.util.List;

interface BoardInterface {
	//목록					현재페이지, 한페이지당 출력할 레코드 수, 
	public List<BoardVO> getAllRecord(int pageNum, int onePageRecord, String commuPage, int totalRecord, int totalPage, String searchKey, String searchWord);
	//글쓰기
	public int boardInsert(BoardVO vo);
	//수정
	public int boardUpdate(BoardVO vo);
	//삭제
	public int boardDelete(int num);
	//조회수
	public void boardHit(int num);
	//총레코드수
	public int boardTotalRecord(String commuPage, String searchKey, String searchWord);
	//레코드 선택
	public void boardSelect(BoardVO vo, boolean a);
}
