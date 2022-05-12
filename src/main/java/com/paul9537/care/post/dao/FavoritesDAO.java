package com.paul9537.care.post.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.paul9537.care.post.model.Favorites;

@Repository
public interface FavoritesDAO {

	public int insertFavorites(
			@Param("userId") int userId,
			@Param("postId") int postId);
	
	public int selectFavoritesByUserId(
			@Param("userId") int userId,
			@Param("postId") int postId);
	
	public int deleteFavoritesByUserId(
			@Param("userId") int userId,
			@Param("postId") int postId);
	
	public List<Favorites> selectFavoritesListByUserId(@Param("userId") int userId);
}
