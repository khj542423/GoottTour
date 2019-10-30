package kr.goott.tour.register;

public interface RegisterInterface {

	public boolean idCheck(String userId);
	
	public int insertRecord(RegisterVO vo);
	
	public void login(RegisterVO vo);
	
	public void selectRegister(RegisterVO vo);
	
	public int updateRecord(RegisterVO vo);
	
	public void getRegister(RegisterVO vo);
	
	
	
}
