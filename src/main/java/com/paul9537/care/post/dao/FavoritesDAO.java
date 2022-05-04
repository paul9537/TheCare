package com.paul9537.care.post.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FavoritesDAO {

	public int insertFavorites(
			@Param("userId") int userId,
			@Param("postId") int postId);
	
	public int selectFavoritesByUserId(
			@Param("userId") int userId,
			@Param("postId") int postId);
	
	public int deleteFavoirtesByUserId(
			@Param("userId") int userId,
			@Param("postId") int postId);
}
