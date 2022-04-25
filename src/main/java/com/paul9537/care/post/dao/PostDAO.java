package com.paul9537.care.post.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.paul9537.care.user.model.Profile;

@Repository
public interface PostDAO {
	
	public Profile selectProfileByUserId(@Param("userId") int userId);
	
	public int insertPost(
			@Param("userId") int userId,
			@Param("postType") String postType,
			@Param("content") String content);
}
