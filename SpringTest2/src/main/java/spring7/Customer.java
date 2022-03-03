package spring7;

import java.util.Set;

//고객,도서(서버에 접속->ip주소(=도메인이름),접속시간을 설정(spring8),책대여수를 관리)
public class Customer {

	private Set<Integer> subSet;//책대여수
	//Set인 경우 xml에서 어떻게 환경설정?-><set>태그 사용해서 환경설정한다.

	public void setSubSet(Set<Integer> subSet) {
		this.subSet = subSet;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Customer[subSet="+subSet+"]";
	}
}
