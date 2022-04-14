<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Care Profile Page</title>
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
		
		<section>
			<div>
				<!-- 후기 버튼 -->
				<button type="button" class="btn btn-info float-right mr-3 mt-3">후기</button>
				
				<!-- 프로필 상단 정보 -->
				<div class="d-flex border-bottom p-3">
					<div class="image-box">
						<img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png" width="300px">
					</div>
					<div class="ml-5">
						<h2>paul9537</h2>
						<h4 class="mt-1">Rating 4.7</h4>
						<div class="mt-4">
							<!-- 이메일 -->
							<h5>paul9537@hotmail.com</h5>
							<!-- 지역 -->
							<div class="mt-4">
								<h4>지역</h4>
								<h4>서울시 강남구</h4>
							</div>
						</div>
						<div class="d-flex mt-4">
							<!-- 방문 가능 일정 -->
							<div>
								<h4>방문 가능 일정</h4>
								<h5>월 화 수 목 금 토 일</h5>
							</div>
							<!-- 희망 시급 -->
							<div class="ml-5">
								<h4>희망 시급</h4>
								<h5>15000원</h5>
							</div>
							<!-- 나이대 -->
							<div class="ml-5">
								<h4>나이대</h4>
								<h5>20대</h5>
							</div>	
						</div>
					</div>
				</div>
			</div>
			
			<!-- 프로필 하단 정보 -->
			<div class="p-3 mt-3">
				<div>
					<!-- 프로필 수정 버튼 -->
					<button type="button" class="btn btn-info float-right">수정</button>
					<!-- 소개 -->
					<div>
						<h4>소개</h4>
						<div class="introduce-box">
							<h5>베이비시터 일 3년 이상 했고 현제 월수금만 가능합니다.이메일로 연락 부탁드립니다.</h5>
						</div>
					</div>
					<!-- 가능 활동 -->
					<div>
						<h4>맘시터</h4>
						<div></div>
					</div>
				</div>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

</body>
</html>