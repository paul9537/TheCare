package com.paul9537.care.user;

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
	
	@GetMapping("/profile_edit")
	public String profileEdit() {
		return "user/profileEdit";
	}
}
