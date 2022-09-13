<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>게임 팀 선택화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/teamChoiceForm_style.css" rel="stylesheet" type="text/css">
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
				<li class="topBanner" style="margin-left: 350px;"><a onclick="location.href='loginForm.html'" style="cursor: pointer;">로그인</a>
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
				<li class="bottomGnbList" >스포츠
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
	<!-- 배너 밑 이미지 영역 -->
	<div class="sportsWrap">
		<div>
			<div class="baseballImageWrap">
				<img alt="" src="/resources/img/baseballImage.png" style="width: 100%;" class="baseballImage">
			</div>
		</div>	
		<!-- 팀선택 카트 영역 -->
		<div class="sportsListWrap">
			<div class="card" style="width: 18rem;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB003.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h5 class="card-title">키움 히어로즈</h5>
    				<p class="card-text">고척스카이돔</p>
    				<p class="card-text" style="font-size: xx-small">KIWOOM HEROES BASEBALL CLUB</p>
    				<a href="#" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">예매하기</a>
  					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">준비중입니다</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        다른 팀을 골라주세요.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					      </div>
					    </div>
					  </div>
					</div>
  				</div>
			</div>
			<div class="card" style="width: 18rem;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB004.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h5 class="card-title">두산 베어스</h5>
    				<p class="card-text">잠실야구장</p>
    				<p class="card-text" style="font-size: xx-small">DOOSAN BEARS BASEBALL CLUB</p>
    				<a href="#" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">예매하기</a>
  					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">준비중입니다</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        다른 팀을 골라주세요.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					      </div>
					    </div>
					  </div>
					</div>
  				</div>
			</div>
			<div class="card" style="width: 18rem;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB002.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h5 class="card-title">SSG 랜더스</h5>
    				<p class="card-text">인천SSG랜더스필드</p>
    				<p class="card-text" style="font-size: xx-small">SSG LANDERS</p>
    				<a href="#" class="btn btn-danger" onclick="location.href='gameChoiceForm.html'" style="cursor: pointer;">예매하기<a>
  				</div>
			</div>
			<div class="card" style="width: 18rem; margin-top: 20px;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB002.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h3 class="card-title" style="font-size: 19px;">SSG 랜더스 퓨처스 서머리그</h3>
    				<p class="card-text">인천SSG랜더스필드</p>
    				<p class="card-text" style="font-size: xx-small; margin-bottom: 6px;">SSG LANDERS FUTURES SUMMER LEGGUE</p>
    				<a href="#" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">예매하기<a>
  					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">준비중입니다</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        다른 팀을 골라주세요.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					      </div>
					    </div>
					  </div>
  				</div>
			</div>		
		</div>
	
	
	</div><!-- sportWrap end -->
		
	
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