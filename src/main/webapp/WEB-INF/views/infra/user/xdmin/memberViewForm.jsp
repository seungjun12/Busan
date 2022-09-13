<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>마이페이지</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/memberViewForm_style.css" rel="stylesheet" type="text/css">
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
				<li class="topBanner" style="margin-left: 350px;"><a onclick="location.href='../main/indexForm.html'" style="cursor: pointer;">로그아웃</a>
				<li class="topBanner" style="margin-left: 10px;"><a onclick="location.href='registerForm.html'" style="cursor: pointer;">회원가입</a>
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
		<input class="form-control" type="text" aria-label="default input example" style="width: 300px; display: inline-block; margin-left: 100px;">
	</div>	
	<!-- 메인 시작 -->
	<div class="mainWrap">	
		<div id="openIdWrap">
			<div class="logoTop">
				<h1>INTERPARK</h1>
			</div>
			<!-- 메인 칸들 -->
			<div class="contentsWrap">
				<div class="myInfoMain">
					<!-- 맴버등급 나오는 곳 -->
					<div class="memberClass">
						<div class="myLevel">
							<img alt="하트모양입니다" src="/resources//heartImg.png">
							<p class="infoTxt">
								박승준님은 현재
								<span>WELCOME</span>
								등급입니다
							</p>
						</div>
						<p class="benefit">등급별 혜택보기</p>
					</div>
					<!-- 메인 메뉴 -->
					<div class="mainMenu">
						<!-- 회원정보수정 -->
						<div class="menuBox infoModify">
							<a onclick="location.href='informationMod.html'" style="cursor: pointer;">
								<p>회원정보수정</p>
								<span class="noti">
									본인인증,휴대폰 번호 등
									<br>
									내정보를 수정하세요.
								</span>
							</a>
						</div>
						<!-- 비밀번호 변경 -->
						<div id="password" class="menuBox password">
							<a onclick="location.href='pwdModForm.html'" style="cursor: pointer;">
								<p>비밀번호변경</p>
								<span class="noti">
									주기적인 변경으로
									<br>
									내정보를 보호하세요.
								</span>
							</a>
						</div>
						<!-- 배송지관리 -->
						<div class="menuBox shipping">
							<a>
								<p class="title">배송지관리</p>
								<span class="noti">
									기본주소 및 배송지를
									<br>
									관리하세요.
								</span>
							</a>
						</div>
						<!-- SNS연결설정 -->
						<div class="menuBox sns">
							<a>
								<p class="title">SNS연결설정</p>
								<span class="noti">
									네이버,카카오 등 SNS로
									<br>
									간편하게 로그인하세요.
								</span>
							</a>
						</div>
						<!-- 로그인관리 -->
						<div class="menuBox loginManage">
							<a>
								<p>로그인관리</p>
								<span class="noti"></span>
							</a>
						</div>
						<!-- 회원탈퇴 -->
						<div class="menuBox withdrawal">
							<a>
								<p>회원탈퇴</p>
								<span class="noti"></span>
							</a>
						</div>
					</div>
					<!-- 메인메뉴 밑에 개인정보 이용내역 보기 -->
					<div class="usePrivacyWrap">
						<a class="buttonPrivacy">
							개인정보 이용내역 보기 >
						</a>
					</div>
				</div>
			</div>
		
		
		
		</div>
	</div><!-- mainWrap end -->
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>