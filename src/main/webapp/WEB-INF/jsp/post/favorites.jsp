<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Care Favorites Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
		<section class="d-flex justify-content-center">
			<div class="postList-box bg-light">
				
				<!-- 게시물 -->
				<c:forEach var="postDetail" items="${postList }" >
				<div class="mt-3 post-box bg-white border rounded">
					<div>
						<div class="d-flex justify-content-between">
							<div class="ml-3 mt-2">${postDetail.post.nickname }</div>
							
							<div class="d-flex">
								<!-- 즐겨찾기 추가 버튼 -->
								<div class="mr-1">
								<c:choose>
									<c:when test="${postDetail.favorites }" >
									<a class="deleteFavoritesBtn text-dark" href="#" data-post-id="${postDetail.post.id }">
										<i class="bi bi-star-fill"></i>
									</a>
									</c:when>
									<c:otherwise>
									<a class="favoritesBtn text-dark" href="#" data-post-id="${postDetail.post.id }" >
										<i class="bi bi-star"></i>
									</a>
									</c:otherwise>
								</c:choose>
								</div>
								<!-- 게시물 삭제 3 Dots -->
								<div class="more-icon" >
									<a class="text-dark moreBtn" href="#" data-post-id="${postDetail.post.id }" data-toggle="modal" data-target="#moreModal"> 
										<i class="bi bi-three-dots-vertical"></i> 
									</a>
								</div>
							</div>
						</div>
						<hr>
						
						<div class="d-flex ml-3 p-2">
							<img src="${postDetail.post.imagePath }" width="150px">
							
							<div class="ml-3">
								<h5>${postDetail.post.name }</h5>
								<div class="small text-secondary">${postDetail.post.address }</div>
								<div class="small text-secondary">${postDetail.post.age }세</div>
								<div class="small text-secondary">희망시급 ${postDetail.post.wage }원</div>
								<div class="small text-secondary">점수 4.7 후기 10개</div>
							</div>
						</div>
						<hr>
						<div class="small ml-3 text-secondary">
							${postDetail.post.content }
						</div>
					</div>
				</div>
				</c:forEach>
			</div>
			
			<!-- 게시물 작성 버튼 -->
			<div class="postIconDiv">
				<a href="/post/create_post_view"><i id="postIcon" class="bi bi-pencil-square"></i></a>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
</body>
</html>