package com.thirukkural.dto;

public class Adhigaram {
	private String name;
	private Long start;
	private Long end;
	private Kural[] kuralArr;
	public Adhigaram(String name, Long start, Long end,Kural[] kuralArr) {
		super();
		this.name = name;
		this.start = start;
		this.end = end;
		this.kuralArr = kuralArr;
	}
	
	public Kural[] getKuralArr() {
		return kuralArr;
	}

	public void setKuralArr(Kural[] kuralArr) {
		this.kuralArr = kuralArr;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getStart() {
		return start;
	}
	public void setStart(Long start) {
		this.start = start;
	}
	public Long getEnd() {
		return end;
	}
	public void setEnd(Long end) {
		this.end = end;
	}

}
