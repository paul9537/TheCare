<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Care SignUp View</title>
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
		
		<section class="bg-warning d-flex justify-content-center align-items-center">
			<div>
					<div class="signup-box bg-white border rounded">
						<div class="w-100 p-5">
							<h2 class="text-center">회원가입</h2>
							<br>
			
							<div class="d-flex justify-content-center">
								<div>맘회원 / 시터회원</div>
								<div class="ml-5">
									<label>맘회원<input type="radio" class="ml-1" name="type" value="mom" checked></label>
									<label class="ml-3">시터회원<input type="radio" class="ml-1" name="type" value="sitter"></label>
								</div>
							</div>
			
							<div class="d-flex justify-content-center mt-3">
								<input type="text" class="form-control" id="idInput" placeholder="아이디">
								<button class="btn btn-info" id="checkBtn">중복확인</button>
							</div>

							<div>
								<input type="password" class="form-control mt-3" id="passwordInput" placeholder="비밀번호">
								<input type="password" class="form-control mt-3" id="passwordCheckInput" placeholder="비밀번호 확인">
								<input type="text" class="form-control mt-3" id="nameInput" placeholder="사용자 이름">
								<input type="text" class="form-control mt-3" id="emailInput" placeholder="이메일">
							</div>
							
							<div class="d-flex mt-3">
							    <select name="addressRegion" id="addressRegion" class="form-control"></select>
							    <select name="addressDo" id="addressDo" class="form-control"></select>
							    <select name="addressSiGunGu" id="addressSiGunGu" class="form-control"></select>
							</div>
							
							<div>
								<button class="btn btn-info btn-block mt-5">가입하기</button>
							</div>
						</div>
					</div>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script>
	$(document).ready(function() {
		
		
		
		
	});
	
	$(function(){
	    areaSelectMaker("select[name=addressRegion]");
	});

	var areaSelectMaker = function(target){
	    if(target == null || $(target).length == 0){
	        console.warn("Unkwon Area Tag");
	        return;
	    }

	    var area = {
	        "수도권" :{
	            "서울특별시" : [ "강남구", "강동구", "강북구", "강서구", "관악구", "광진구", "구로구", "금천구", "노원구", "도봉구", "동대문구", "동작구", "마포구", "서대문구", "서초구", "성동구", "성북구", "송파구", "양천구", "영등포구", "용산구", "은평구", "종로구", "중구", "중랑구" ],
	            "경기도" : [ "수원시 장안구", "수원시 권선구", "수원시 팔달구", "수원시 영통구", "성남시 수정구", "성남시 중원구", "성남시 분당구", "의정부시", "안양시 만안구", "안양시 동안구", "부천시", "광명시", "평택시", "동두천시", "안산시 상록구", "안산시 단원구", "고양시 덕양구", "고양시 일산동구",
	                "고양시 일산서구", "과천시", "구리시", "남양주시", "오산시", "시흥시", "군포시", "의왕시", "하남시", "용인시 처인구", "용인시 기흥구", "용인시 수지구", "파주시", "이천시", "안성시", "김포시", "화성시", "광주시", "양주시", "포천시", "여주시", "연천군", "가평군",
	                "양평군" ],
	            "인천광역시" : [ "계양구", "미추홀구", "남동구", "동구", "부평구", "서구", "연수구", "중구", "강화군", "옹진군" ]			
	        },
	        "강원권" :{
	            "강원도" : [ "춘천시", "원주시", "강릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ]			
	        },
	        "충청권" :{
	            "충청북도" : [ "청주시 상당구", "청주시 서원구", "청주시 흥덕구", "청주시 청원구", "충주시", "제천시", "보은군", "옥천군", "영동군", "증평군", "진천군", "괴산군", "음성군", "단양군" ],
	            "충청남도" : [ "천안시 동남구", "천안시 서북구", "공주시", "보령시", "아산시", "서산시", "논산시", "계룡시", "당진시", "금산군", "부여군", "서천군", "청양군", "홍성군", "예산군", "태안군" ],
	            "대전광역시" : [ "대덕구", "동구", "서구", "유성구", "중구" ],
	            "세종특별자치시" : [ "세종특별자치시" ]			
	        },
	        "전라권" :{
	            "전라북도" : [ "전주시 완산구", "전주시 덕진구", "군산시", "익산시", "정읍시", "남원시", "김제시", "완주군", "진안군", "무주군", "장수군", "임실군", "순창군", "고창군", "부안군" ],
	            "전라남도" : [ "목포시", "여수시", "순천시", "나주시", "광양시", "담양군", "곡성군", "구례군", "고흥군", "보성군", "화순군", "장흥군", "강진군", "해남군", "영암군", "무안군", "함평군", "영광군", "장성군", "완도군", "진도군", "신안군" ],
	            "광주광역시" : [ "광산구", "남구", "동구", "북구", "서구" ]			
	        },
	        "경상권" : {
	            "경상북도" : [ "포항시 남구", "포항시 북구", "경주시", "김천시", "안동시", "구미시", "영주시", "영천시", "상주시", "문경시", "경산시", "군위군", "의성군", "청송군", "영양군", "영덕군", "청도군", "고령군", "성주군", "칠곡군", "예천군", "봉화군", "울진군", "울릉군" ],
	            "경상남도" : [ "창원시 의창구", "창원시 성산구", "창원시 마산합포구", "창원시 마산회원구", "창원시 진해구", "진주시", "통영시", "사천시", "김해시", "밀양시", "거제시", "양산시", "의령군", "함안군", "창녕군", "고성군", "남해군", "하동군", "산청군", "함양군", "거창군", "합천군" ],
	            "부산광역시" : [ "강서구", "금정구", "남구", "동구", "동래구", "부산진구", "북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구", "기장군" ],
	            "대구광역시" : [ "남구", "달서구", "동구", "북구", "서구", "수성구", "중구", "달성군" ],
	            "울산광역시" : [ "남구", "동구", "북구", "중구", "울주군" ]			
	        },
	        "제주권" : {
	            "제주특별자치도" : [ "서귀포시", "제주시" ]			
	        }
	    };

	    for(i=0; i<$(target).length; i++){
	        (function(z){
	            var a1 = $(target).eq(z);
	            var a2 = a1.next();
	            var a3 = a2.next();

	            //초기화
	            init(a1, true);

	            //권역 기본 생성
	            var areaKeys1 = Object.keys(area);
	            areaKeys1.forEach(function(Region){
	                a1.append("<option value="+Region+">"+Region+"</option>");
	            });

	            //변경 이벤트
	            $(a1).on("change", function(){
	                init($(this), false);
	                var Region = $(this).val();
	                var keys = Object.keys(area[Region]);
	                keys.forEach(function(Do){
	                    a2.append("<option value="+Do+">"+Do+"</option>");    
	                });
	            });

	            $(a2).on("change", function(){
	                a3.empty().append("<option value=''>선택</option>");
	                var Region = a1.val();
	                var Do = $(this).val();
	                var keys = Object.keys(area[Region][Do]);
	                keys.forEach(function(SiGunGu){
	                    a3.append("<option value="+area[Region][Do][SiGunGu]+">"+area[Region][Do][SiGunGu]+"</option>");    
	                });
	            });
	        })(i);        

	        function init(t, first){
	            first ? t.empty().append("<option value=''>선택</option>") : "";
	            t.next().empty().append("<option value=''>선택</option>");
	            t.next().next().empty().append("<option value=''>선택</option>");
	        }
	    }
	}
	</script>
</body>
</html>