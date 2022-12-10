package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@Data
public class Photo {
	
	private int cr_seq;
	private String cr_file;
	private String cr_url;
	private Date cr_date;
	private String admin_id;
	private int cr_count;
	
	
	@Column(columnDefinition = "date default sysdate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date mem_joindate=new Date();   
	
}

