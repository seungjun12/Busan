<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>메인화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/indexForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@900&display=swap" rel="stylesheet">
</head>
<body>
<form>
<div id="wrap">	
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간 배너 -->
	<div id="middleGnb">
		<h2 style="display: inline-block;">
			<a style="font-family: 'IBM Plex Sans KR', sans-serif; cursor: pointer;" class="btnIndex">티켓</a>
		</h2>
		<img alt="" src="/resources/img/ticketInterParkLogo.png" style="margin-bottom: 10px; cursor: pointer;" class="btnIndex">
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
				<li class="bottomGnbList" id="btnGameChoice" style="cursor: pointer">스포츠
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
	<!-- 이미지 영역 -->
	<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  		<div class="carousel-inner">
   			<div class="carousel-item active">
      			<img src="/resources/img/carousel1.png" class="d-block w-100" alt="..." <!-- id="image" -->
    		</div>
   			<div class="carousel-item">
      			<img src="/resources/img/carousel2.png" class="d-block w-100" alt="..." <!-- id="image" -->
    		</div>
    		<div class="carousel-item">
      			<img src="/resources/img/carousel3.png" class="d-block w-100" alt="..." <!-- id="image" -->
    		</div>
  		</div> 
	</div>
	<!-- 밑에 배너들 시작 -->
	<div id="contentWrap">
		<div id="contendTop">
			<img alt="" src="/resources/img/contentTop.png">
		</div>
		<div>
			<img alt="" src="/resources/img/contentMiddle.png">
		</div>
		<!-- 랭킹영역 --><!-- 안됭이ㅣㅣㅣㅇ 여기부터 ㄱㄱ -->
			<div class="rankigListWrap">
				<div class="rankingTitle">
					<h3><b>RANKING</b></h3>
				</div>
				<div class="container mt-5">
			      <ul class="list">
			        <li class="tab-button">Products</li>
			        <li class="tab-button active">Information</li>
			        <li class="tab-button">Shipping</li>
			      </ul>
			    
			      <div class="tab-content">
			        <p>상품설명입니다. Product</p>
			      </div>
			      <div class="tab-content show">
			        <p>상품정보입니다. Info</p>
			      </div>
			      <div class="tab-content">
			        <p>배송정보입니다. Shipping</p>
			      </div>
			    </div>
			</div>  
			
			
		
		
		
		<!-- 중간 이미지 -->
		<div>
			<img alt="" src="/resources/img/mainImage.png">
		</div>
		<!-- today banner -->
		<div class="todayBanner">
			<img alt="" src="/resources/img/todayBanner.png">
		</div>
		<!-- 뮤지컬 글 -->
		<div class="bannerAnswer">
			<h3>MUSICAL</h3>
		</div>
		<!-- 뮤지컬 이미지 -->
		<div>
			<img alt="" src="/resources/img/musicalImage.png">
		</div>
		<!-- 콘서트 글 -->
		<div class="bannerAnswer">
			<h3>CONCERT</h3>
		</div>
		<!-- 콘서트 이미지 -->
		<div>
			<img alt="" src="/resources/img/concertImage.png">		
		</div>
		<!-- play&classic글 -->
		<div class="bannerAnswer">
			<h3>PLAY&CLASSIC</h3>
		</div>
		<!-- play&classic이미지 -->
		<div>
			<img alt="" src="/resources/img/play&classicImage.png">		
		</div>
		<!-- 스포츠 영역 -->
		<div class="bannerAnswer">
			<h3>SPORTS%EXHIBITION&THEATER</h3>
		</div>
		<!-- 스포츠 이미지 -->
		<div>
			<img alt="" src="/resources/img/playImage.png">		
		</div>
		<!-- 하단 배너 -->
		<div class="bottomBanner">
			<img alt="" src="/resources/img/bottomBanner.png">
		</div>
	</div><!-- contentWrap end -->
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
	
	
	<script type="text/javascript"></script>
</div> <!-- wrap end -->
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlLogin = "/member/login";
	var goUrlRegister = "/member/register";
	var goUrlGame = "/main/gameChoice";
	var goUrlIndex = "/main/index";
	var goUrlMemberView = "/member/memberViewForm";
	
		$(".btnLogin").on("click",function(){
			$(location).attr("href",goUrlLogin);
		});
	
		$(".btnRegister").on("click",function(){
			$(location).attr("href",goUrlRegister);
		});
		
		$("#btnGameChoice").on("click",function(){
			$(location).attr("href",goUrlGame);
		});
		
		$(".btnIndex").on("click",function(){
			$(location).attr("href",goUrlIndex);
		});
		
		$("#btnMemberView").on("click",function(){
			$(location).attr("href",goUrlMemberView);
		});
		
		
		
	
	
	</script>

</body>
</html>