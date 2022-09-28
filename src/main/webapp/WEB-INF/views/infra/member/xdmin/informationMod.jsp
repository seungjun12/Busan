<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원정보수정</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/informationModForm_style.css" rel="stylesheet" type="text/css">
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
							<h4>회원정보수정</h4>
						</div>
						<div class="normalInformation">
							<h6><b>기본정보</b></h6>
						</div>
						<!-- 아이디 영역 -->
						<div class="container-fluid id">
							<div class="row">
								<div class="col-3">
									아이디
								</div>
								<div class="col">
									<c:out value="${sessId }"/>
								</div>	
							</div>
						</div>
						<!-- 이름 영역 -->
						<div class="container-fluid idBottom">
							<div class="row">
								<div class="col-3">
									이름
								</div>
								<div class="col-6">
									<c:out value="${sessName}"/>
								</div>
								<div class="col-3 modifyBtn">
									<button type="button" class="btn btn-light">수정</button>
								</div>
							</div>
						</div>
						<!-- 휴대폰번호 영역 -->
						<div class="container-fluid idBottom">
							<div class="row">
								<div class="col-3">
									휴대폰번호
								</div>
								<div class="col-6">
									<%-- <c:out value="${item.number }"/> --%> <!-- 해결해야됨!! -->
								</div>
								<div class="col-3 modifyBtn">
									<button type="button" class="btn btn-light">수정</button>
								</div>
							</div>
						</div>
						<!-- 이메일영역 -->
						<div class="container-fluid idBottom">
							<div class="row">
								<div class="col-3">
									이메일
								</div>
								<div class="col-6">
									<c:out value="${sessEmail }"/>
								</div>
								<div class="col-3 modifyBtn">
									<button type="button" class="btn btn-light">수정</button>
								</div>
							</div>
						</div>
						<!-- 생년월일 -->
						<div class="container-fluid idBottom">
							<div class="row">
								<div class="col-3">
									생년월일
								</div>
								<div class="col">
									<c:out value="${sessDob }"/>
								</div>	
							</div>
						</div>
						<!-- 성별 -->
						<div class="container-fluid idBottom">
							<div class="row">
								<div class="col-3">
									성별
								</div>
								<div class="col">
									<div class="form-check form-check-inline">
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="gender6" value="6" disabled <c:if test="${sessGender eq 6 }">selected</c:if>>
  										<label class="form-check-label" for="inlineRadio3">남</label>
									</div>
									<div class="form-check form-check-inline">
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="gender7" value="7" disabled <c:if test="${sessGender eq 7 }">selected</c:if>>
  										<label class="form-check-label" for="inlineRadio3">여</label>
									</div>									
								</div>	
							</div>
						</div>
						<!-- 본인인증 -->
						<div class="container-fluid idBottom">
							<div class="row">
								<div class="col-3">
									본인인증
								</div>
								<div class="col">
									인증 완료되었습니다.(인증일:2021-04-15)
								</div>	
							</div>
						</div>
						<!-- 휴먼방지기간 -->
						<div class="container-fluid idBottom">
							<div class="row">
								<div class="col-3">
									휴먼방지기간
								</div>
								<div class="col">
									<div class="form-check form-check-inline">
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="agree8" value="8" <c:if test="${sessPersonal eq 8 }">selected</c:if>>
  										<label class="form-check-label" for="inlineRadio1">1년</label>
									</div>
									<div class="form-check form-check-inline">
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="agree9" value="9" <c:if test="${sessPersonal eq 9 }">selected</c:if>>
  										<label class="form-check-label" for="inlineRadio2">탈퇴시까지</label>
									</div>																		
								</div>	
							</div>
						</div>
						<!-- 밑에 설명 -->
						<div class="bottomAnswer">
							<p>성별 및 생년월일은 정확한 본인확인을 위해 본인인증 시 인증된 정보로 변경되어 이후 수정 불가능합니다.</p>
						</div>
						<div class="container-flid finalBtn">
							<div class="row">
								<div class="col-6">
									<button type="button" class="btn btn-outline-danger">취소</button>
								</div>
								<div class="col">
									<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">변경</button>
									<!-- Modal -->
									<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="staticBackdropLabel">정말 변경하시겠습니까?</h5>
									        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									      </div>
									      <div class="modal-body">
									        변경할꺼야?
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