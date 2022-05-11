package com.paul9537.care.post.model;

public class PostDetail {
	private Post post;
	private boolean isFavorites;
	
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	public boolean isFavorites() {
		return isFavorites;
	}
	public void setFavorites(boolean isFavorites) {
		this.isFavorites = isFavorites;
	}

	
}
