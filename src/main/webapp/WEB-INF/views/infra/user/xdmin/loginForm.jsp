<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>로그인 화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/loginForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrap">	
	<div id="topGnbbg">
		<!-- 최상단 배너 -->
		<div id="topGnb">
			<ul class="nav nav-tabs">
				<li class="nav-item">
				  <a class="nav-link disabled topGnb">홈</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link disabled topGnb">도서</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link active topGnb" aria-current="page" href="#">티켓</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link disabled topGnb">투어</a>
				</li>
				<li class="topBanner" style="margin-left: 350px;"><a type="button" id="btnLogin">로그인</a>
				<li class="topBanner" style="margin-left: 10px;"><a type="button" class="btnRegister">회원가입</a>
				<li class="topBanner" style="margin-left: 10px;"><a>예매확인/취소</a>
				<li class="topBanner" style="margin-left: 10px;"><a>마이페이지</a>
				<li class="topBanner" style="margin-left: 10px;">고객센터
				<li class="topBanner" style="margin-left: 10px;">모바일APP
				<li class="topBanner" style="margin-left: 10px;">Language
			</ul>
		</div>
	</div>
	<!-- 중간 배너 -->
	<div id="middleGnb">
		<h2 style="display: inline-block;">
			<a style="font-family: 'IBM Plex Sans KR', sans-serif; cursor: pointer;" onclick="location.href='../main/indexForm.html'" >티켓</a>
		</h2>
		<img alt="" src="/resources/img/ticketInterParkLogo.png" style="margin-bottom: 10px; cursor: pointer;" onclick="location.href='../main/indexForm.html'">
		<input class="form-control" type="text" aria-label="default input example" style="width: 300px; display: inline-block; margin-left: 20px;">
		<img alt="" src="/resources/img/searchRightPlay.png" style="margin-left: 10px;">
		<a>| 영화 |</a>
		<img alt="" src="/resources/img/searchRightDiscount.png" style="width: 240px;">
	</div>
	<!-- 하단 배너 -->
	<div id="bottomGnb">
		<div id="bottomGnbList">
			<ul class="bottomGnbList">
				<li class="bottomGnbList"><a><i class="fa-solid fa-align-justify"></i></a>
				<li class="bottomGnbList">뮤지컬
				<li class="bottomGnbList">콘서트
				<li class="bottomGnbList">연극
				<li class="bottomGnbList">클래식/무용
				<li class="bottomGnbList" onclick="location.href='../main/gameChoiceForm.html'" style="cursor: pointer;">스포츠
				<li class="bottomGnbList">레저
				<li class="bottomGnbList">전시/행사
				<li class="bottomGnbList">아동/가족
				<li class="bottomGnbList">TOPING
			</ul>					
		</div>
		<div id="bottomGnbRight">
			<ul class="bottomGnbList">		
				<li class="bottomGnbList"><i class="fa-regular fa-bookmark"></i>랭킹
				<li class="bottomGnbList">지역
				<li class="bottomGnbList"><i class="fa-solid fa-location-dot"></i>공연장
			</ul>
		</div>		
	</div>	
	<!-- 로그인 영역 -->
	<div id="login">
		<!-- 아이디 비번 입력영역 -->
		<!-- 오른쪽 이미지 영역 -->
		<div id="loginImage">
			<img alt="" src="/resources/img/loginRightPhone.png">
			<img alt="" src="/resources/img/loginRightAdd.png" style="margin-top: 10px;">
		</div>
		<!-- 아이디 비번 입력영역 -->
		<div id="loginInput">
			<input class="form-control" type="text" aria-label="default input example" placeholder="아이디">
			<input class="form-control" type="password" aria-label="default input example" placeholder="비밀번호" style="margin-top: 10px;">
			<button type="button" class="btn btn-danger" style="width: 420px; margin-top: 15px;" onclick="location.href='..//main/indexFormLogin.html'" style="cursor: pointer;">로그인</button>
			<!-- 자동로그인 아이디저장 체크버튼 -->
			<div id="loginCheck">	
				<div class="form-check form-check-inline">
	  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
	 			 	<label class="form-check-label" for="inlineRadio1">자동로그인</label>
				</div>
				<div class="form-check form-check-inline">
	 	 			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
	  				<label class="form-check-label" for="inlineRadio2">아이디저장</label>
				</div>			
			</div>
		</div>
		<!-- 네이버 카카오 로그인 영역 -->
		<div id="snsLogin">
			<button type="button" class="btn btn-outline-success" style="width: 420px;">네이버 로그인</button>
			<button type="button" class="btn btn-outline-warning" style="width: 420px; margin-top: 10px;">카카오 로그인</button>
			<button type="button" class="btn btn-outline-primary" style="width: 420px; margin-top: 10px;">페이스북 로그인</button>
			<button type="button" class="btn btn-outline-dark" style="width: 420px; margin-top: 10px;">구글 로그인</button>
		</div>
		<!-- 로그인 밑에 설명영역 -->
		<div id="loginAnswer">
			개인정보 보호를 위해 공용 PC에서 사용 후 SNSN 계정의 로그아웃 상태를 반드시 확인해주세요.
			<hr>
		</div>
		<!-- 아이디 비번 찾기,회원가입 영역 -->
		<div id="loginBottom">
			<a href="javascript:popup()"  style="cursor: pointer;">아이디 찾기</a>
			<a style="margin-left: 10px;">비밀번호 찾기</a>
			<a style="margin-left: 10px;" type="button" class="btnRegister">회원가입</a>
		</div>
		<div id="loginBottomImage">
			<img alt="" src="/resources/img/loginBottomImg.png">
		</div>
	</div><!-- login end -->
	<!-- footer영역 시작 -->
	<div id="footerWrap">
		<div id="footerTop">
			<div id="footerTopList">	
				<ul class="footerList">
					<li class="footerListLi" style="margin-left: 0px;"><b>개인정보처리방침</b>
					<li class="footerListLi">청소년 보호정책</li>
					<li class="footerListLi">이용약관</li>
					<li class="footerListLi">티켓판매 안내</li>
					<li class="footerListLi">IR</li>
					<li class="footerListLi">회사소개</li>
					<li class="footerListLi">채용공고</li>
					<li class="footerListLi">우수고객제도</li>
					<li class="footerListLi">제휴/광고안내</li>
					<li class="footerListLi">
						<div class="btn-group dropup">
  							<button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" style="padding: 0px;">
    							Language
  							</button>
  							<ul class="dropdown-menu">
    							<li>Korean
    							<li>English
    							<li>Japanese
    							<li>Chinese
  							</ul>
						</div>
					</li>
				</ul>
			</div>
			<div id="footerBottom">
				<dl>
					<dt>
						<img alt="" src="/resources/img/interparkLogoFooter.png">
					</dt>				
					<dd>
						<span style="vertical-align: top;">주식회사 인터파크</span>
					</dd>
					<dd>
						06168 서울시 강남구 삼성로 512 삼성동빌딩 10층(삼성동) | 대표이사 김강세 | 사업자등록번호 824-81-02515
					</dd>
					<dd>
						통신판매업신고 2022-서울강남-02179 | Copyright 2015 INTERPARK ALL rights reserved.
					</dd>
				</dl>
			</div>
		
	
	</div><!-- footerWrap end -->
	
	
	
</div> <!-- wrap end -->

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>	
	
	var goUrlIndex = "/main/index";
	var goUrlLogin = "/user/login";
	var goUrlgame = "/main/gameChoice"
	var goUrlRegister = "/member/register"

    $("#btnIndex").on("click",function(){
    	$(location).attr("href",goUrlIndex);
    });
	
	$("#btnLogin").on("click",function(){
		$(location).attr("href",goUrlLogin);
	});
	
	$("#btnGameChoice").on("click",function(){
		$(location).attr("href",goUrlgame);
	});	
	
	$(".btnRegister").on("click",function(){
		$(location).attr("href",goUrlRegister);
	});
	
</script>	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<script langauge="javascript">
	function popup(){
		var url="findIdForm.html";
		var option="width544px, height=300px, top=200px"
		window.open(url,"",option);
	}
</script>
</body>
</html>