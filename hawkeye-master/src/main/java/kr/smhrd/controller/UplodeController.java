package kr.smhrd.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.smhrd.entity.Member;
import kr.smhrd.entity.Uplode;
import kr.smhrd.service.UplodeService;

@Controller
public class UplodeController {
	
	@Autowired
	UplodeService uplodeService;
	
	@PostMapping("/Uplode")
	public String Up(Uplode uplode, HttpSession session) {
		Member member = (Member) session.getAttribute("vo");
		uplode.setMemid(member.getMemid());
		System.out.println(uplode.getMemid());
		uplodeService.Up(uplode);
		return "redirect:/progress";
		
	}
	
}
