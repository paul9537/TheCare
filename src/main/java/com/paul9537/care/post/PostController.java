package com.paul9537.care.post;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/post")
public class PostController {

	@GetMapping("/main_view")
	public String mainView() {
		return "post/main";
	}

	@GetMapping("/babysitter_view")
	public String babysitterView() {
		return "post/babysitter";
	}
	
	@GetMapping("/petsitter_view")
	public String petsitterView() {
		return "post/petsitter";
	}
}
