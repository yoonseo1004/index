package kr.smhrd.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Service;
import kr.smhrd.entity.Criteria;
import kr.smhrd.entity.Photo;
import kr.smhrd.mapper.PhotoMapper;

@Service
public class PhotoService {
	
	@Autowired
	public PhotoMapper photoMapper;
	
	
	public List<Photo> getPhoto(Criteria cri){
		List<Photo> photo = photoMapper.getPhoto(cri);
		return photo;
	}
	
	
	public int countBoard() {
		return photoMapper.countBoard();
	}
}