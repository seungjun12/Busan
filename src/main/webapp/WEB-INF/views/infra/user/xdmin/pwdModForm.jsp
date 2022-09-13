<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>비밀번호변경</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/pwdModForm_style.css" rel="stylesheet" type="text/css">
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
	<!-- 매인 시작 -->
	<div class="mainWrap">
		<div id="openIdWrap">
			<div class="logoTop">
				<h1>INTERPARK</h1>
			</div>
			<div class="whiteWrap">
				<!-- 왼쪽 영역 -->
				<div class="leftWrap">
					<!-- 왼쪽 위 등급 -->
					<div class="gradeWrap">
						<span>박승준님은</span>
						<br>
						<u>WELCOME</u>
						<span>등급입니다.</span>
					</div>
					<div class="memberFunction">
						<!-- 회원정보수정 -->
						<div class="memberModify leftFunction">
							<a onclick="location.href='informationMod.html'" style="cursor: pointer;">
								<i class="fa-solid fa-user-gear"></i>
								<span>회원정보수정</span>
							</a>
						</div>
						<!-- 비밀번호변경 -->
						<div class="leftFunction memberPwd">
							<a onclick="location.href='pwdModForm.html'" style="cursor: pointer;">
								<i class="fa-solid fa-lock-open"></i>
								<span>비밀번호변경</span>
							</a>
						</div>
						<!-- 배송지관리 -->
						<div class="leftFunction">
							<i class="fa-solid fa-box"></i>
							<span>배송지관리</span>
						</div>
						<!-- SNS연결설정 -->
						<div class="leftFunction">
							<i class="fa-brands fa-google"></i>
							<span>SNS연결설정</span>
						</div>
						<!-- 로그인 관리 -->
						<div class="leftFunction">
							<i class="fa-solid fa-key"></i>
							<span>로그인 관리</span>
						</div>
						<!-- 회원탈퇴 -->
						<div class="leftFunction">
							<i class="fa-solid fa-door-open"></i>
							<span>회원탈퇴</span>
						</div>
					</div>
				</div><!-- leftWrap end -->
				<!-- 오른쪽 영역 -->
				<div class="rightWrap">
					<div class="modifyWrap">
						<div class="memberHead">
							<h4>비밀번호변경</h4>
						</div>
						<div class="center">
							<span>주기적인</span>
							<span id="redColor">비밀번호 변경</span>
							<span>을 통해</span>
							<br>
							<p>개인정보를 안전하게 보호하세요</p>
						</div>
						<!-- 새 비밀번호입력 -->
						<div class="pwdModify">
							<input class="form-control" type="password" placeholder="새 비밀번호" aria-label="default input example">
							<p>  영문,숫자,특수문자 8~12자로 입력해주세요</p>
						</div>
						<!-- 새 비밀번호 확인 -->
						<div class="pwdModify">
							<input class="form-control" type="password" placeholder="새 비밀번호 확인" aria-label="default input example">						
							<p>  영문,숫자,특수문자 8~12자로 입력해주세요</p>
						</div>
						<!-- 비밀번호 입력 밑에 설명 -->
						<div class="pwdAnswer">
							<p>
								<i class="fa-solid fa-circle-exclamation"></i>
								비밀번호는 8~12자 이내로 영문(대,소문자),숫자,특수문자 3가지 조합 중 2가지 이상을 조합하셔서 만드시면 됩니다.
							</p>
						</div>
						<!-- 취소,변경 버튼 -->
						<div class="container-flid finalBtn">
							<div class="row">
								<div class="col-6">
									<button type="button" class="btn btn-outline-danger" onclick="location.href='memberViewForm.html'">취소</button>
								</div>
								<div class="col">
									<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">변경</button>
								</div>
								<!-- Modal -->
								<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="staticBackdropLabel">비밀번호 변경</h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								        비밀번호 변경하시겠습니까?
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								        <button type="button" class="btn btn-danger" onclick="location.href='memberViewForm.html'">변경</button>
								      </div>
								    </div>
								  </div>
								</div>
							
							</div>
						</div>
						
					</div>
				</div>
				
				
				
				
			</div>
		</div>
	</div>

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
		
		</div>
	</div><!-- footerWrap end -->
	
	
	
</div> <!-- wrap end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>