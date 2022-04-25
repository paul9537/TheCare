package com.paul9537.care.post;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.paul9537.care.post.bo.PostBO;


@RestController
@RequestMapping("/post")
public class PostRestController {
	
	@Autowired
	private PostBO postBO;
	
	public Map<String, String> createPost(
			@RequestParam("userId") int userId,
			@RequestParam("postType") String postType,
			@RequestParam("content") String content,
			HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		session.getAttribute("userId");
		
		int count = postBO.createPost(userId, postType, content);
		
		Map<String, String> result = new HashMap<>();
		if(count == 1) {
			result.put("result", "success");
		} else {
			result.put("result", "fail");
		}
		return result;
	}

	
}
