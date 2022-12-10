package kr.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.smhrd.entity.Member;

@Controller
public class BoardController {
	
	@GetMapping("/main")
	public String main() {
		return "main";
	}

	@GetMapping("/info")
	public String info() {
		return "info";
	}
	
	@GetMapping("/uplode")
	public String uplode() {
		return "uplode";
	}
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	
	@GetMapping("/join")
	public String join() {
		return "join";
	}
	
	
	@GetMapping("/progress")
	public String progress() {
		return "progress";
	}
	
	@GetMapping("/test")
	public String test() {
		return "test";
	}
	
}