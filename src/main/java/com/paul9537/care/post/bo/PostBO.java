package com.paul9537.care.post.bo;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paul9537.care.common.FileManagerService;
import com.paul9537.care.post.dao.PostDAO;
import com.paul9537.care.post.model.Post;
import com.paul9537.care.user.bo.UserBO;
import com.paul9537.care.user.model.Profile;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	private UserBO userBO;
	
	public Profile getProfile(int userId) {
		return postDAO.selectProfileByUserId(userId);
	}
	
	public int createPost(int userId, String postType, String name, String content) {
		
		Profile profile = userBO.getProfile(userId);
		String nickname = profile.getNickname();
		String address = profile.getAddress();
		int age = profile.getAge();
		int wage = profile.getWage();
		String imagePath = profile.getImagePath();
		
		return postDAO.insertPost(userId, postType, imagePath, name, nickname, address, age, wage, content);
	}
	
	public List<Post> getBabysitterPostList() {
		
		return postDAO.selectBabysitterPostList();
	}
	
	public List<Post> getPetsitterPostList() {
		
		return postDAO.selectPetsitterPostList();
	}
	
	public int removePost(int postId, int userId) {
		// postId로 Post 객체 얻어오기
		Post post = postDAO.selectPostByPostId(postId);
		if(post.getUserId() == userId) {
			// 파일 삭제
			FileManagerService.removeFile(post.getImagePath());

			return postDAO.deletePost(postId);
		}
		
		return 0;
	}
	
}
