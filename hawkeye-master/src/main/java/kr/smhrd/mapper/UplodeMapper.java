package kr.smhrd.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;

import kr.smhrd.entity.Member;
import kr.smhrd.entity.Uplode;

@Mapper
public interface UplodeMapper {
	
	@Insert("insert into uplode values('1', '324', sysdate, #{memid})")
	public void Up(Uplode uplode);
}
