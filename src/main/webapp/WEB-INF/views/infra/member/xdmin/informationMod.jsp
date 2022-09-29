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
				<form name="form" method="post">
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
									<c:out value="${item.id }"/>
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
									<c:out value="${item.name}"/>
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
									<c:out value="${item.number }"/>
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
									<c:out value="${item.email }"/>
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
									<c:out value="${item.dob }"/>
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
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="gender6" value="6" disabled <c:if test="${item.gender eq 6 }">selected</c:if>>
  										<label class="form-check-label" for="inlineRadio3">남</label>
									</div>
									<div class="form-check form-check-inline">
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="gender7" value="7" disabled <c:if test="${item.gender eq 7 }">selected</c:if>>
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
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="agree8" value="8" <c:if test="${item.personalAgree eq 8 }">selected</c:if>>
  										<label class="form-check-label" for="inlineRadio1">1년</label>
									</div>
									<div class="form-check form-check-inline">
  										<input class="form-check-input" type="radio" name="inlineRadioOptions" id="agree9" value="9" <c:if test="${item.personalAgree eq 9 }">selected</c:if>>
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
				</form>
				
				
				
			</div>
		</div>
	</div>

	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	
	
	
</div> <!-- wrap end -->
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>	
	var goUrlInformationMod = "/member/informationMod";
	var goUrlPwdMod = "/member/pwdMod"
	var goUrlIndex = "/main/index";
	
	$("#btnInformationMod").on("click",function(){
		$location.attr("href",goUrlInformationMod);
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