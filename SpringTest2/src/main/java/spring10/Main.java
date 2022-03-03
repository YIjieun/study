package spring10;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
	//1.메모리 관리->xml파일이 여러개 존재->배열로 관리->파일명 부여
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] configLocation=new String[] {"app.xml"};
		
		//2.xml파일을 메모리에 올려줄 수 있는 클래스를 통해서 객체를 생성
		AbstractApplicationContext context=
											new ClassPathXmlApplicationContext(configLocation);
		//3.자바프로그램이 종료=>자동적으로 context객체도 같이 종료될 수 있도록 처리
		context.registerShutdownHook();
		//4.xml에서 만들어진 객체를 가져와서 처리
		
		SystemMoniter moniter=context.getBean("systemMoniter",SystemMoniter.class);//3.x버전		
		System.out.println("moniter=>"+moniter);
	
		//5.context도 종료
		context.close();//메모리에 올려놓은 모든 Beans의 객체들을 모두 메모리에서 해제하라.
	}
}
