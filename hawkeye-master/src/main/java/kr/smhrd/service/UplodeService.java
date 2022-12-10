package kr.smhrd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.Uplode;
import kr.smhrd.mapper.UplodeMapper;


@Service
public class UplodeService {

@Autowired
UplodeMapper uplodeMapper;

	public void Up(Uplode uplode) {
		uplodeMapper.Up(uplode);
	}
}
