package kr.smhrd.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Member;


@Mapper
public interface MemberMapper {
	public List<Member> getMember();
	

}
