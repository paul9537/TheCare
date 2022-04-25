<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Care Profile Edit Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
</head>
<body>
	
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<section>
			<div class="d-flex justify-content-center">
					<div class="signup-box border rounded mt-5">
						<div class="p-5">
							<h2 class="text-center">프로필 수정</h2>
							<br>
							
							<!-- 아이돌봄 / 반려견 돌봄 -->
							<div class="d-flex justify-content-center">
								<div>아이 돌봄 / 반려견 돌봄</div>
								<div class="ml-5">
									<label>아이<input type="radio" id="childCB" class="ml-1" name="careType" value="child" checked></label>
									<label class="ml-3">반려견<input id="petCB" type="radio" class="ml-1" name="careType" value="pet"></label>
								</div>
							</div>
							
							<!-- 닉네임 -->
							<div class="d-flex justify-content-center mt-3">
								<input type="text" class="form-control" id="nicknameInput" placeholder="닉네임">
								<button class="btn btn-info" id="checkBtn">중복확인</button>
							</div>
							
							<!-- 이미지 사진 -->
							<input id="fileInput" type="file" class="d-none" />
							<a href="#" id="imageIcon" class="form-control btn btn-info my-2"><i class="big-icon bi bi-image text-dark"> 이미지 파일 업로드</i></a>
							
							<!-- 나이 -->
							<input type="text" id="ageInput" class="form-control" placeholder="나이">
							
							<!-- 희만시급 -->
							<input type="text" id="wageInput" class="form-control mt-2" placeholder="희망시급" >
							
							<!-- 경력 / 아이정보 -->
							<textarea id="informationInput" class="form-control mt-2" placeholder="경력 / 아이정보를 입력해주세요"></textarea>
							
							<!-- 시도구군 -->
							<div class="d-flex mt-3">
								<select name="sido1" id="sido1" class="form-control"></select>
								<select name="gugun1" id="gugun1" class="form-control"></select>
							</div>

							<!-- 가능 요일 선택 -->
							<div class="mt-3">
								<div class="font-weight-bold">가능 요일을 선택해주세요</div>
								<div class="d-flex justify-content-between">
									<label>월<input type="checkbox" name="day" value="monday"></label>
									<label>화<input type="checkbox" name="day" value="tuesday"></label>
									<label>수<input type="checkbox" name="day" value="wednesday"></label>
									<label>목<input type="checkbox" name="day" value="thursday"></label>
									<label>금<input type="checkbox" name="day" value="friday"></label>
									<label>토<input type="checkbox" name="day" value="saturday"></label>
									<label>일<input type="checkbox" name="day" value="sunday"></label>
								</div>
							</div>
							
							<!-- 가능 활동 선택 (아이) -->
							<div class="child-activity mt-3">
								<div class="font-weight-bold">가능 활동을 선택해주세요</div>
								<div class="d-flex justify-content-between">
									<label>실내놀이<input type="checkbox" name="babyActivity" value="indoorActivity"></label>
									<label>야외활동<input type="checkbox" name="babyActivity" value="outdoorActivity"></label>
									<label>등하원 돕기<input type="checkbox" name="babyActivity" value="dropoff"></label>
								</div>
								<div class="d-flex justify-content-between">
									<label>책 읽기<input type="checkbox" name="babyActivity" value="read"></label>
									<label>밥 챙겨주기<input type="checkbox" name="babyActivity" value="feed"></label>
									<label>간단 청소<input type="checkbox" name="babyActivity" value="cleanup"></label>
								</div>
							</div>
							
							<!-- 가능 활동 선택 (반려견) -->
							<div class="pet-activity mt-3 d-none">
								<div class="font-weight-bold">가능 활동을 선택해주세요</div>
								<div class="d-flex justify-content-between">
									<label>실내놀이<input type="checkbox" name="petActivity" value="indoorActivity"></label>
									<label>야외활동<input type="checkbox" name="petActivity" value="outdoorActivity"></label>
									<label>간단 청소<input type="checkbox" name="petActivity" value="cleanUp"></label>
								</div>
								<div class="d-flex justify-content-between">
									<label>배변 훈련<input type="checkbox" name="petActivity" value="pottyTrain"></label>
									<label>행동 교정<input type="checkbox" name="petActivity" value="behaviorTrain"></label>
									<label>사회화 훈련<input type="checkbox" name="petActivity" value="socialTrain"></label>
								</div>
							</div>
							
							<!-- 프로필 수정 버튼 -->
							<div>
								<button id="profileEditBtn" class="btn btn-info btn-block mt-5">수정하기</button>
							</div>
							
						</div>
					</div>
			</div>
		</section>

		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	</div>
	
	<script>
		$(document).ready(function() {
			var isChecked = false;
			var isDuplicate = true;
			var possibleDays = [];
			var possibleBabyActivity = [];
			var possiblePetActivity = [];
			var possibleActivity = [];
			
			$("#profileEditBtn").on("click", function() {
				let careType = $('input[name="careType"]:checked').val();
				let nickname = $("#nicknameInput").val().trim();
				let age = $("#ageInput").val();
				let wage = $("#wageInput").val();
				let information = $("#informationInput").val();
				let address = $("#sido1").val() + " " + $("#gugun1").val();
				let possibleDay = $('input[name="day"]:checked').val();

				$('input[name="day"]:checked').each(function() {
					var daysChk = $(this).val();
					possibleDays.push(daysChk);
				});
				
				$('input[name="babyActivity"]:checked').each(function() {
					var babyActivityChk = $(this).val();
					possibleBabyActivity.push(babyActivityChk);
				});
				
				$('input[name="petActivity"]:checked').each(function() {
					var petActivityChk = $(this).val();
					possiblePetActivity.push(petActivityChk);
				});
				
				possibleActivity.push(possibleBabyActivity);
				possibleActivity.push(possiblePetActivity);
				
				alert(possibleActivity);
				
				if($("#fileInput")[0].files.length == 0) {
					alert("파일을 선택해주세요");
					return ;
				}
				
				let formData = new FormData();
				
				formData.append("careType", careType);
				formData.append("age", age);
				formData.append("wage", wage);
				formData.append("information", information);
				formData.append("address", address);
				formData.append("possibleDays", possibleDays);
				formData.append("possibleActivity", possibleActivity);
				formData.append("file", $("#fileInput")[0].files[0]);
				
				$.ajax({
					url:"/user/profile_edit",
					type:"post",
					data:formData,
					enctype:"multipart/form-data",
					processData:false,
					contentType:false,
					success:function(data) {
						if(data.result == "success") {
							alert("프로필 수정 성공");
							location.href="/post/profile_view";
						} else {
							alert("프로필 수정 실패");
						}
					},
					error:function() {
						alert("프로필 수정 에러");
					}
				});
				
			});
			
			$("#imageIcon").on("click", function() {
				$("#fileInput").click();
			});
			
			$("#checkBtn").on("click", function() {
				let nickname = $("#nicknameInput").val();
				
				isChecked = true
				
				if(nickname == "") {
					alert("아이디를 입력해주세요");
					return ;
				}
				
				$.ajax({
					type:"get",
					url:"/user/nicknameDuplicate",
					data:{"nickname":nickname},
					success:function(data) {
						if(data.isDuplicate) {
							isDuplicate = true;
							alert("이미 사용중인 닉네임입니다");
							return ;
						} else{
							isDuplicate = false;
							alert("사용 가능한 닉네임입니다");
							return ;
						}
						
					},
					error:function() {
						alert("중복체크 에러");
					}
					
				});
				
			});
			
			$("#childCB").on("click", function() {
				$(".pet-activity").addClass("d-none");
				$(".child-activity").removeClass("d-none");
			});
			
			$("#petCB").on("click", function() {
				$(".child-activity").addClass("d-none");
				$(".pet-activity").removeClass("d-none");
			});
			
			var area0 = ["시/도 선택","서울특별시","인천광역시","대전광역시","광주광역시","대구광역시","울산광역시","부산광역시","경기도","강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"];
			var area1 = ["강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구","도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구","양천구","영등포구","용산구","은평구","종로구","중구","중랑구"];
			var area2 = ["계양구","남구","남동구","동구","부평구","서구","연수구","중구","강화군","옹진군"];
			var area3 = ["대덕구","동구","서구","유성구","중구"];
			var area4 = ["광산구","남구","동구",     "북구","서구"];
			var area5 = ["남구","달서구","동구","북구","서구","수성구","중구","달성군"];
			var area6 = ["남구","동구","북구","중구","울주군"];
			var area7 = ["강서구","금정구","남구","동구","동래구","부산진구","북구","사상구","사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"];
			var area8 = ["고양시","과천시","광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시","성남시","수원시","시흥시","안산시","안성시","안양시","양주시","오산시","용인시","의왕시","의정부시","이천시","파주시","평택시","포천시","하남시","화성시","가평군","양평군","여주군","연천군"];
			var area9 = ["강릉시","동해시","삼척시","속초시","원주시","춘천시","태백시","고성군","양구군","양양군","영월군","인제군","정선군","철원군","평창군","홍천군","화천군","횡성군"];
			var area10 = ["제천시","청주시","충주시","괴산군","단양군","보은군","영동군","옥천군","음성군","증평군","진천군","청원군"];
			var area11 = ["계룡시","공주시","논산시","보령시","서산시","아산시","천안시","금산군","당진군","부여군","서천군","연기군","예산군","청양군","태안군","홍성군"];
			var area12 = ["군산시","김제시","남원시","익산시","전주시","정읍시","고창군","무주군","부안군","순창군","완주군","임실군","장수군","진안군"];
			var area13 = ["광양시","나주시","목포시","순천시","여수시","강진군","고흥군","곡성군","구례군","담양군","무안군","보성군","신안군","영광군","영암군","완도군","장성군","장흥군","진도군","함평군","해남군","화순군"];
			var area14 = ["경산시","경주시","구미시","김천시","문경시","상주시","안동시","영주시","영천시","포항시","고령군","군위군","봉화군","성주군","영덕군","영양군","예천군","울릉군","울진군","의성군","청도군","청송군","칠곡군"];
			var area15 = ["거제시","김해시","마산시","밀양시","사천시","양산시","진주시","진해시","창원시","통영시","거창군","고성군","남해군","산청군","의령군","창녕군","하동군","함안군","함양군","합천군"];
			var area16 = ["서귀포시","제주시","남제주군","북제주군"];
		
			// 시/도 선택 박스 초기화
		
			$("select[name^=sido]").each(function() {
				$selsido = $(this);
				
				$.each(eval(area0), function() {
					$selsido.append("<option value='" + this + "'>" + this + "</option>");
				}); 
				$selsido.next().append("<option value=''>구/군 선택</option>");
			});
		
			// 시/도 선택시 구/군 설정
		
			$("select[name^=sido]").change(function() {
				var area = "area"+$("option", $(this)).index($("option:selected",$(this))); // 선택지역의 구군 Array
				var $gugun = $(this).next(); // 선택영역 군구 객체
				$("option", $gugun).remove(); // 구군 초기화
				
				if(area == "area0")
					$gugun.append("<option value=''>구/군 선택</option>");
				else {
					$.each(eval(area), function() {
						$gugun.append("<option value='" + this + "'>" + this + "</option>");
					});
				}
			});
			
		});
	
		
	
	
	</script>
</body>
</html>