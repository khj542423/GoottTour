package kr.goott.tour.freeboard;

import java.util.List;

interface BoardInterface {
	//���					����������, ���������� ����� ���ڵ� ��, 
	public List<BoardVO> getAllRecord(int pageNum, int onePageRecord, String commuPage, int totalRecord, int totalPage, String searchKey, String searchWord);
	//�۾���
	public int boardInsert(BoardVO vo);
	//����
	public int boardUpdate(BoardVO vo);
	//����
	public int boardDelete(int num);
	//��ȸ��
	public void boardHit(int num);
	//�ѷ��ڵ��
	public int boardTotalRecord(String commuPage, String searchKey, String searchWord);
	//���ڵ� ����
	public void boardSelect(BoardVO vo, boolean a);
}
