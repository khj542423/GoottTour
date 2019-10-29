package kr.goott.tour.register;

public interface RegisterInterface {

	public boolean idCheck(String userId);
	
	public int insertRecord(RegisterVO vo);
	
}
