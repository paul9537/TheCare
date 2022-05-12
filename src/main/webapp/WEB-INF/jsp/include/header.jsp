<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
		<header>

	        <nav id="top-nav" class="sb-topnav navbar navbar-expand navbar-dark bg-dark fixed-top">
         	    <a class="navbar-brand" href="/post/main_view">The Care </a> 

            	<c:choose>
	            	<c:when test="${not empty userId }">
		            <!-- Navbar-->
			            <ul class="navbar-nav ml-auto mr-0 mr-md-3 my-2 my-md-0">
			                <li class="nav-item dropdown">
			                    <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown"></a>
			                    <div class="dropdown-menu dropdown-menu-right">
		
			                        <a class="dropdown-item" href="/post/profile_view">프로필</a>
			                        
			                        <div class="dropdown-divider"></div>
		                       		<a class="dropdown-item" href="/user/signout">로그아웃</a>
			         				
			                    </div>
			                </li>
			            </ul>
		            </c:when>
		            
		            <c:when test="${empty userId }">
			            <ul class="navbar-nav ml-auto mr-0 mr-md-3 my-2 my-md-0">
			            	<li class="nav-item">
			            		<a class="nav-link text-white" href="/user/signin_view">로그인</a>
			            	</li>
			            </ul>
		            </c:when>
	            </c:choose>
        	</nav>
        	
		
		</header>
