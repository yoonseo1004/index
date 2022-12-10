package kr.smhrd.mapper;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
import kr.smhrd.entity.Criteria;
import kr.smhrd.entity.Photo;

@Repository
@Mapper
public interface PhotoMapper {

	public List<Photo> getPhoto(Criteria cri);
	
	@Select("select count(*) from crawling")
	public int countBoard();
	

}