package spring5;

//문자전송 시스템
public class SmsSender {
	boolean flag;//문자를 제대로 전달됐는지 체크
	
	//--constructor-arg 생성자에 값 넣음
	public SmsSender(boolean flag) {//<constructor-arg>
		this.flag=flag;
	}
	//--------------------------------------------------------
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "SmsSender를 호출";
	}
}
