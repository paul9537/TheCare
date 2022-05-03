<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Care Petsitter Page</title>
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
				<div class="d-flex justify-content-center">
					<input type="text" class="form-control col-8" placeholder="지역 검색">
					<button type="button" class="btn btn-info">검색</button>
				</div>
				
				<c:forEach var="postList" items="${postList }" >
				<div class="mt-3 post-box bg-white border rounded">
					<div>
						<div class="d-flex justify-content-between">
							<div class="ml-3 mt-2">${postList.nickname }</div>
							
							<div class="d-flex">
								<!-- 즐겨찾기 추가 버튼 -->
								<div class="mr-1">
									<a class="text-dark favoritesBtn" href="#" >
										<i class="bi bi-star"></i>
									</a>
								</div>
								<!-- 게시물 삭제 3 Dots -->
								<div class="more-icon" >
									<a class="text-dark moreBtn" href="#" data-post-id="${postList.id }" data-toggle="modal" data-target="#moreModal"> 
										<i class="bi bi-three-dots-vertical"></i> 
									</a>
								</div>
							</div>
						</div>
						<hr>
						
						<div class="d-flex ml-3 p-2">
							<img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png" width="150px">
							
							<div class="ml-3">
								<h5>최성윤</h5>
								<div class="small text-secondary">${postList.address }</div>
								<div class="small text-secondary">${postList.age }세</div>
								<div class="small text-secondary">희망시급 ${postList.wage }원</div>
								<div class="small text-secondary">점수 4.9 후기 22개</div>
							</div>
						</div>
						<hr>
						<div class="small ml-3 text-secondary">
							${postList.content }
						</div>
					</div>	
				</div>
				</c:forEach>
			</div>
			
			<div class="postIconDiv">
				<a href="/post/create_post_view"><i id="postIcon" class="bi bi-pencil-square"></i></a>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

	<!-- Modal -->
	<div class="modal fade" id="moreModal">
	  <div class="modal-dialog modal-dialog-centered" role="document">
	    <div class="modal-content">
	     
	      <div class="modal-body text-center">
	       	<a href="#" id="deleteBtn">삭제하기 </a>
	      </div>
	    
	    </div>
	  </div>
	</div>	
	
</body>
</html>