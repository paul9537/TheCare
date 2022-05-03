<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Care Create Post Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
		
		<section class="d-flex justify-content-center align-items-center">
			<div class="create-post-box border rounded mt-5">
						<div class="w-100 p-5">
							<h2 class="text-center">게시물 작성</h2>
							<br>
							
							<!-- 등록 종류 -->
							<h5 class="d-flex justify-content-center">올리실 게시판</h5>
							<div class="ml-5 mt-3">
								<label>베이비시터 등록<input type="radio" id="babysitterPost" class="ml-1" name="postType" value="babysitter" checked ></label>
								<label class="ml-3">펫시터 등록<input type="radio" id="petsitterPost" class="ml-1" name="postType" value="petsitter" ></label>
								<label class="ml-3">아이돌봄 등록<input type="radio" id="childCarePost" class="ml-1" name="postType" value="childCare" ></label>
							</div>
							
							<!-- 소개글 -->
							<textarea id="contentInput" class="form-control mt-3" rows="10" placeholder="소개글을 작성해주세요"></textarea>
							
							<!-- 게시물 올리기 버튼 -->
							<div>
								<button id="createPostBtn" class="btn btn-info btn-block mt-5">게시물 올리기</button>
							</div>
						</div>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script>
		$(document).ready(function() {
			
			$("#createPostBtn").on("click", function() {
				let postType = $('input[name="postType"]:checked').val();
				let content = $("#contentInput").val();
				
				if(content == "") {
					alert("게시할 내용을 입력해주세요");
					return ;
				}
				
				$.ajax({
					url:"/post/create_post",
					type:"post",
					data:{"postType":postType, "content":content},
					success:function(data) {
						if(data.result == "success") {
							alert("게시물 등록 성공");
							location.href="/post/babysitter_view";
						} else {
							alert("게시물 등록 실패");
						}
					},
					error:function() {
						alert("게시물 등록 에러");
					}
				});
				
			});

		});
	</script>

</body>
</html>