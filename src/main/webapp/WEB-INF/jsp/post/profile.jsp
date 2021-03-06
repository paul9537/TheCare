<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>

	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		<c:import url="/WEB-INF/jsp/include/sidebar.jsp" />
		<section>
			<div>
				<!-- 후기 버튼 -->
				<button type="button" class="btn btn-info float-right mr-3 mt-3">후기</button>
				
				<!-- 프로필 상단 정보 -->
				<c:set var="profile" value="${profile }" />
				<c:set var="email" value="${email }" />
				
				<div class="d-flex border-bottom p-3">
					<div class="image-box">
						<img src="${profile.imagePath }" width="300px">
					</div>
					<div class="ml-5">
						<h2>${name }</h2>
						<h4 class="mt-1">Rating 4.7</h4>
						<div class="mt-4">
							<!-- 이메일 -->
							<h5>${email }</h5>
							<!-- 지역 -->
							<div class="d-flex">
								<div class="mt-4">
									<h4>활동가능 지역1</h4>
									<h4>${profile.primaryAddress }</h4>
								</div>
								<div class="mt-4 ml-4">
									<h4>활동가능 지역2</h4>
									<h4>${profile.secondaryAddress }</h4>
								</div>
								<div class="mt-4 ml-4">
									<h4>활동가능 지역3</h4>
									<h4>${profile.thirdAddress }</h4>
								</div>
							</div>
						</div>
						<div class="d-flex mt-4">
							<!-- 방문 가능 일정 -->
							<div>
								<h4>방문 가능 일정</h4>
									<h5>
										<c:if test="${fn:contains(profile.possibleDays, 'monday') }" >
											<span class="text-primary">월</span>
										</c:if>
										<c:if test="${not fn:contains(profile.possibleDays, 'monday') }" >
											월
										</c:if>
										<c:if test="${fn:contains(profile.possibleDays, 'tuesday') }" >
											<span class="text-primary">화</span>
										</c:if>
										<c:if test="${not fn:contains(profile.possibleDays, 'tuesday') }" >
											화
										</c:if>
										<c:if test="${fn:contains(profile.possibleDays, 'wednesday') }" >
											<span class="text-primary">수</span>
										</c:if>
										<c:if test="${not fn:contains(profile.possibleDays, 'wednesday') }" >
											수
										</c:if>
										<c:if test="${fn:contains(profile.possibleDays, 'thursday') }" >
											<span class="text-primary">목</span>
										</c:if>
										<c:if test="${not fn:contains(profile.possibleDays, 'thursday') }" >
											목
										</c:if>
										<c:if test="${fn:contains(profile.possibleDays, 'friday') }" >
											<span class="text-primary">금</span>
										</c:if>
										<c:if test="${not fn:contains(profile.possibleDays, 'friday') }" >
											금
										</c:if>
										<c:if test="${fn:contains(profile.possibleDays, 'saturday') }" >
											<span class="text-primary">토</span>
										</c:if>
										<c:if test="${not fn:contains(profile.possibleDays, 'saturday') }" >
											토
										</c:if>
										<c:if test="${fn:contains(profile.possibleDays, 'sunday') }" >
											<span class="text-primary">일</span>
										</c:if>
										<c:if test="${not fn:contains(profile.possibleDays, 'sunday') }" >
											일
										</c:if>
									</h5>
							</div>
							<!-- 희망 시급 -->
							<div class="ml-5">
								<h4>희망 시급</h4>
								<h5>${profile.wage }원</h5>
							</div>
							<!-- 나이대 -->
							<div class="ml-5">
								<h4>나이</h4>
								<h5>${profile.age }</h5>
							</div>	
						</div>
					</div>
				</div>
			</div>
			
			<!-- 프로필 하단 정보 -->
			<div class="p-3 mt-3">
					<!-- 프로필 수정 버튼 -->
					<a href="/user/profile_edit"><button type="button" class="btn btn-info float-right">수정</button></a>
					<div class="d-flex">
						<!-- 소개 -->
						<div>
							<h4>소개</h4>
							<div class="introduce-box">
								<h5 class="font-weight-light">${profile.information }</h5>
							</div>
						</div>
						<!-- 가능 활동 -->
					<div class="ml-5">
					
						<c:if test="${fn:contains(profile.type, 'child') }" >
						<div>
							<h4>가능 활동</h4>
							<div class="d-flex">
								<h5 class="font-weight-light">실내놀이</h5>
								<i class="bi bi-check-lg icon-font"></i>
							</div>
							<div class="d-flex">
								<h5 class="font-weight-light">야외활동</h5>
								<i class="bi bi-check-lg icon-font"></i>
							</div>
							<div class="d-flex">
								<h5 class="font-weight-light">등하원 돕기</h5>
								<i class="bi bi-check-lg icon-font"></i>
							</div>
							<div class="d-flex">
								<h5 class="font-weight-light">책 읽기</h5>
								<i class="bi bi-check-lg icon-font"></i>
							</div>
							<div class="d-flex">
								<h5 class="font-weight-light">밥 챙겨주기</h5>
								<i class="bi bi-check-lg icon-font"></i>
							</div>
							<div class="d-flex">
								<h5 class="font-weight-light">간단 청소</h5>
								<i class="bi bi-check-lg icon-font"></i>
							</div>
						</div>
						</c:if>
						
						<c:if test="${fn:contains(proifle.type, 'pet') }" >
							<div>
								<h4>가능 활동</h4>
								<div class="d-flex">
									<h5 class="font-weight-light">실내놀이</h5>
									<i class="bi bi-check-lg icon-font"></i>
								</div>
								<div class="d-flex">
									<h5 class="font-weight-light">야외활동</h5>
									<i class="bi bi-check-lg icon-font"></i>
								</div>
								<div class="d-flex">
									<h5 class="font-weight-light">등하원 돕기</h5>
									<i class="bi bi-check-lg icon-font"></i>
								</div>
								<div class="d-flex">
									<h5 class="font-weight-light">책 읽기</h5>
									<i class="bi bi-check-lg icon-font"></i>
								</div>
								<div class="d-flex">
									<h5 class="font-weight-light">밥 챙겨주기</h5>
									<i class="bi bi-check-lg icon-font"></i>
								</div>
								<div class="d-flex">
									<h5 class="font-weight-light">간단 청소</h5>
									<i class="bi bi-check-lg icon-font"></i>
								</div>
							</div>
						</c:if>
					</div>
				</div>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>

</body>
</html>