package com.paul9537.care.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@GetMapping("/signin_view")
	public String signinView() {
		return "user/signin";
	}
	
	@GetMapping("/signup_view")
	public String signupView() {
		return "user/signup";
	}
	
	@GetMapping("/signout")
	public String signOut(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("userId");
		session.removeAttribute("userType");
		session.removeAttribute("loginId");
		session.removeAttribute("name");
		session.removeAttribute("nickname");
		
		return "redirect:/post/main_view";
	}
	
	@GetMapping("/profile_edit")
	public String profileEdit() {
		return "user/profileEdit";
	}
}
