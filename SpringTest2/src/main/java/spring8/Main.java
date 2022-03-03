package spring8;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
	//1.메모리 관리->xml파일이 여러개 존재->배열로 관리->파일명 부여
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String[] configLocation=new String[] {"applicationContext.xml"};
		
		//2.xml파일을 메모리에 올려줄 수 있는 클래스를 통해서 객체를 생성
		AbstractApplicationContext context=
											new ClassPathXmlApplicationContext(configLocation);
		//3.자바프로그램이 종료=>자동적으로 context객체도 같이 종료될 수 있도록 처리
		context.registerShutdownHook();
		//4.xml에서 만들어진 객체를 가져와서 처리
		/* 
		 */
		//Customer customer=(Customer)context.getBean("customer");//2.5버전
		BookClient book=context.getBean("bookClient",BookClient.class);//3.x버전
		
		//요청할때 한개의 객체가 만들어줘서 여러사람이 공유해서 사용을 하고 있다.(default)
		//회사에서 부서별로 프린터한대에 공유해서 사용
		System.out.println("book=>"+book);
		//setProp()호출됨!=>{connectionTimeout=5000, server=192.168.0.34}
		//5.context도 종료
		context.close();//메모리에 올려놓은 모든 Beans의 객체들을 모두 메모리에서 해제하라.
	}
}
