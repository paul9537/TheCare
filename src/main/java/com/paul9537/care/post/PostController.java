package com.paul9537.care.post;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.paul9537.care.post.bo.PostBO;
import com.paul9537.care.user.model.Profile;

@Controller
@RequestMapping("/post")
public class PostController {
	
	@Autowired
	private PostBO postBO;

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
	
	@GetMapping("/profile_view")
	public String profileView(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		String email = (String)session.getAttribute("email");
		
		Profile profile = postBO.getProfile(userId);
		
		model.addAttribute("profile", profile);
		
		model.addAttribute("email", email);
		
		return "post/profile";
	}
	
	@GetMapping("/create_post_view")
	public String createPostView() {
		return "post/createPost";
	}
}
