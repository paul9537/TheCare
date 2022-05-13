package com.paul9537.care.post.favorites;

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

@Controller
@RequestMapping("/post")
public class FavoritesController {

	@Autowired
	private PostBO postBO;
	
	@GetMapping("/favorites_view")
	public String favoritesView(Model model, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		int userId = (Integer)session.getAttribute("userId");
		
		List<PostDetail> postList = postBO.getFavoritesPostDetail(userId);
		
		model.addAttribute("postList", postList);
		
		return "post/favorites";
	}
}
