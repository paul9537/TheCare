<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
		<header>
			<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
				<a href="/post/main_view" class="navbar-brand logo">The Care</a>
		 		<div>
				    <ul class="navbar-nav">
						<li class="nav-item">
						  <a class="nav-link" href="/post/babysitter_view">베이비시터 찾기</a>
						</li>
						<li class="nav-item">
						  <a class="nav-link" href="/post/petsitter_view">펫시터 찾기</a>
						</li>
						<li class="nav-item">
						  <a class="nav-link" href="#">일자리 찾기</a>
						</li>
						<c:choose>
							<c:when test="${empty userId }" >
								<li class="nav-item">
									<a href="/user/signin_view" class="nav-link">로그인</a>
								</li>
							</c:when>
							<c:when test="${not empty userId }" >
								<li class="nav-item">
									<a href="/post/profile_view" class="nav-link">프로필</a>
								</li>
								<li>
									<a href="/user/signout" class="nav-link" >로그아웃</a>
								</li>
							</c:when>
						</c:choose>
				    </ul>
				</div>
			</nav>
		</header>
		