package com.paul9537.care.post.bo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paul9537.care.post.dao.PostDAO;
import com.paul9537.care.user.model.Profile;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	public Profile getProfile(int userId) {
		return postDAO.selectProfileByUserId(userId);
	}
	
	public int createPost(int userId, String postType, String content) {
		return postDAO.insertPost(userId, postType, content);
	}
	
}
