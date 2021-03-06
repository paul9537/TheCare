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
			@Param("primaryAddress") String primaryAddress,
			@Param("secondaryAddress") String secondaryAddress,
			@Param("thirdAddress") String thirdAddress,
			@Param("age") int age,
			@Param("wage") int wage,
			@Param("content") String content);
	
	public List<Post> selectBabysitterPostList();
	
	public List<Post> selectPetsitterPostList();
	
	public List<Post> selectFindJobPostList();
	
	public int deletePost(@Param("postId") int postId);
	
	public Post selectPostByPostId(@Param("postId") int postId);

	public List<Post> selectPostListByPostId(@Param("postIdList") List<Integer> postIdList);
	
}
