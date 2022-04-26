package com.paul9537.care.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.paul9537.care.post.model.Post;
import com.paul9537.care.user.model.Profile;

@Repository
public interface PostDAO {
	
	public Profile selectProfileByUserId(@Param("userId") int userId);
	
	public int insertPost(
			@Param("userId") int userId,
			@Param("postType") String postType,
			@Param("imagePath") String imagePath,
			@Param("name") String name,
			@Param("nickname") String nickname,
			@Param("address") String address,
			@Param("age") int age,
			@Param("wage") int wage,
			@Param("content") String content);
	
	
}
