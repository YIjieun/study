package spring6;

import java.util.List;

public class PerformanceMoniter {
	
	private List<Double> number;//성능

	public void setNumber(List<Double> number) {
		this.number = number;
		System.out.println("setNumber()호출=>"+number);
	}	

}
