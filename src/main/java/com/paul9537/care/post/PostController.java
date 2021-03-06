package com.paul9537.care.post;



import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.paul9537.care.post.bo.PostBO;
import com.paul9537.care.post.model.PostDetail;
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
	public String babysitterView(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostDetail> postList = postBO.getBabysitterPostDetailList(userId);
		
		model.addAttribute("postList", postList);
		
		return "post/babysitter";
	}
	
	@GetMapping("/petsitter_view")
	public String petsitterView(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostDetail> postList = postBO.getPetsitterPostDetailList(userId);
		
		model.addAttribute("postList", postList);
		
		return "post/petsitter";
	}
	
	@GetMapping("/profile_view")
	public String profileView(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		String email = (String)session.getAttribute("email");
		String name = (String)session.getAttribute("name");
		
		Profile profile = postBO.getProfile(userId);
		
		model.addAttribute("profile", profile);
		
		model.addAttribute("email", email);
		
		model.addAttribute("name", name);
		
		return "post/profile";
	}
	
	@GetMapping("/create_post_view")
	public String createPostView() {
		return "post/createPost";
	}
	
	
	@GetMapping("findjob_view")
	public String findjobView(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostDetail> postList = postBO.getFindJobPostDetail(userId);
		
		model.addAttribute("postList", postList);
		
		return "post/findjob";
	}
}
