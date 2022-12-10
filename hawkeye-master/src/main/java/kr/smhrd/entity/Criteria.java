package kr.smhrd.entity;

import lombok.Data;

@Data
public class Criteria {
	
	private int page;
	private int perPageNum;
	
	public Criteria() {
		this.page = 1;
		this.perPageNum = 5;
	}
	
	public int getPageStart() {
		return (this.page-1)*perPageNum;
	}

}
