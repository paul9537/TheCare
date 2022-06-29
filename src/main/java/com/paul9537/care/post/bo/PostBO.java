package com.paul9537.care.post.bo;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.paul9537.care.common.FileManagerService;
import com.paul9537.care.post.dao.PostDAO;
import com.paul9537.care.post.model.Favorites;
import com.paul9537.care.post.model.Post;
import com.paul9537.care.post.model.PostDetail;
import com.paul9537.care.user.bo.UserBO;
import com.paul9537.care.user.model.Profile;

@Service
public class PostBO {
	
	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	private UserBO userBO;
	
	@Autowired
	private FavoritesBO favoritesBO;
	
	public Profile getProfile(int userId) {
		return postDAO.selectProfileByUserId(userId);
	}
	
	public int createPost(int userId, String postType, String name, String content) {
		
		Profile profile = userBO.getProfile(userId);
		String primaryAddress = profile.getPrimaryAddress();
		String secondaryAddress = profile.getSecondaryAddress();
		String thirdAddress = profile.getThirdAddress();
		int age = profile.getAge();
		int wage = profile.getWage();
		String imagePath = profile.getImagePath();
		
		return postDAO.insertPost(userId, postType, imagePath, name, primaryAddress, secondaryAddress, thirdAddress, age, wage, content);
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
	
	public List<PostDetail> getBabysitterPostDetailList(int userId) {
		
		List<Post> postList = postDAO.selectBabysitterPostList();
		
		List<PostDetail> postDetailList = new ArrayList<>();
		
		for(Post post : postList) {
			
			PostDetail postDetail = new PostDetail();
			
			boolean isFavorite = favoritesBO.isFavorites(post.getId(), userId);
			
			postDetail.setPost(post);
			
			postDetail.setFavorites(isFavorite);
			
			postDetailList.add(postDetail);
		}
		
		return postDetailList;
	}
	
	public List<PostDetail> getPetsitterPostDetailList(int userId) {
		
		List<Post> postList = postDAO.selectPetsitterPostList();
		
		List<PostDetail> postDetailList = new ArrayList<>();
		
		for(Post post : postList) {
			
			PostDetail postDetailPetsitter = new PostDetail();
			
			boolean isFavorite = favoritesBO.isFavorites(post.getId(), userId);
			
			postDetailPetsitter.setPost(post);
			
			postDetailPetsitter.setFavorites(isFavorite);
			
			postDetailList.add(postDetailPetsitter);
		}
		
		return postDetailList;
	}
	
	public List<PostDetail> getFindJobPostDetail(int userId) {
		
		List<Post> postList = postDAO.selectFindJobPostList();
		
		List<PostDetail> postDetailList = new ArrayList<>();
		
		for(Post post : postList) {
			
			PostDetail postDetailFindJob = new PostDetail();
			
			boolean isFavorite = favoritesBO.isFavorites(post.getId(), userId);
			
			postDetailFindJob.setPost(post);
			
			postDetailFindJob.setFavorites(isFavorite);
			
			postDetailList.add(postDetailFindJob);
		}
		
		return postDetailList;
	}
	
	
	public List<PostDetail> getFavoritesPostDetail(int userId) {
		
		List<Favorites> favoritesList = favoritesBO.getFavoritesList(userId);
		
		List<Integer> postIdList = new ArrayList<>();
		
		for(int i = 0; i < favoritesList.size(); i++) {
			postIdList.add(favoritesList.get(i).getPostId());
		}
		
		List<Post> favoritesPostList = postDAO.selectPostListByPostId(postIdList);
		
		List<PostDetail> postDetailList = new ArrayList<>();
		
		for(Post post : favoritesPostList) {
			
			PostDetail favoritesPostDetail = new PostDetail();
			
			boolean isFavorite = favoritesBO.isFavorites(post.getId(), userId);
			
			favoritesPostDetail.setPost(post);
			
			favoritesPostDetail.setFavorites(isFavorite);
			
			postDetailList.add(favoritesPostDetail);
			
		}
		return postDetailList;
	}
	
}
