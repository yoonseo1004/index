package kr.smhrd.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.ColumnDefault;


import lombok.Data;

// 회원(Object) -> 아이디, 비번, 이름,,,,,,,,,,,,,,,,

@Entity
@Data
public class Member {
	
	@Id
	private String memid;
	private String mempw;
	private String nick;
	
	
	@Column(columnDefinition = "date default sysdate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date mem_joindate=new Date();      
	
	@Column(columnDefinition = "number default 0")
	private int mem_type; // USER(0), ADMIN(1)	
	
}