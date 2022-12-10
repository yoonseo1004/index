package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class Uplode {
	
	private int upseq;
	private String upfile;
	private Date update;
	private String memid;
}
