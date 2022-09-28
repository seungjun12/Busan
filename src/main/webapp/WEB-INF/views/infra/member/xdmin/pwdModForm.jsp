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
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간배너 s -->
	<%@include file="../../../common/xdmin/includeV1/viewTopVanner.jsp"%>
	<!-- 중간배너 e -->
	<!-- 매인 시작 -->
	<div class="mainWrap">
		<div id="openIdWrap">
			<div class="logoTop">
				<h1>INTERPARK</h1>
			</div>
			<div class="whiteWrap">
			<!-- 왼쪽배너 s -->
			<%@include file="../../../common/xdmin/includeV1/viewLeftVanner.jsp"%>
			<!-- 왼쪽배너 e -->
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
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>	
	var goUrlInformationMod = "/member/informationMod";
	var goUrlPwdMod = "/member/pwdMod"
	var goUrlIndex = "/main/index";
	
	$("#btnInformationMod").on("click",function(){
		$(location).attr("href",goUrlInformationMod);
	});

	$("#btnPwdMod").on("click",function(){
		$(location).attr("href",goUrlPwdMod);
	});
	
	$(".btnIndex").on("click",function(){
		$(location).attr("href",goUrlIndex);
	});
	
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>