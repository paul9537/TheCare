package com.paul9537.care.post.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paul9537.care.post.dao.FavoritesDAO;
import com.paul9537.care.post.model.Favorites;

@Service
public class FavoritesBO {
	
	@Autowired
	private FavoritesDAO favoritesDAO;
	
	public int addFavorites(int userId, int postId) {
		return favoritesDAO.insertFavorites(userId, postId);
	}
	
	public boolean isFavorites(int postId, int userId) {
		int count = favoritesDAO.selectFavoritesByUserId(userId, postId);
		
		return (count != 0);
	}
	
	public int deleteFavorites(int userId, int postId) {
		return favoritesDAO.deleteFavoritesByUserId(userId, postId);
	}
	
	public List<Favorites> getFavoritesList(int userId) {
		return favoritesDAO.selectFavoritesListByUserId(userId);
	}
	
}
