<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/registerForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Karla:wght@300&display=swap" rel="stylesheet">
	
	<!-- datepicker -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css"
	
	
</head>
<body>
<div id="wrap">
	
		<div id="top">
			<a type="button" id="btnIndex"><h3 id="topLogo">INTERPARK</h3></a> 
		</div>
		<hr style="margin-bottom: 0px;">
		<h5>정보입력</h5>
		<form method="post" action="memberRegister" id="registerForm" name="registerForm">
		<div id="register-wrap">
			<!-- 아이디 입력 -->
			<div id="id2">
				<b>아이디</b>
				<!-- <input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0"> -->
				<input
				 class="form-control" 
				 type="text" placeholder="6~20자 영문,숫자" 
				 aria-label="default input example" 
				 id="id" name="id" value="<c:out value="${dto.id }"/>"
				 >
				 <div class="invalid-feedback" id="ifmmIdFeedback"></div>
			</div>
			<hr>
			<!-- 비밀번호 입력 -->
			<div>
				<b>비밀번호</b>
				<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
				<input class="form-control" 
				type="password" placeholder="8~12자 영문,숫자,특수문자" 
				aria-label="default input example" id="pwd" name="pwd" value="<c:out value="${dto.pwd }"/>"
				>
			</div>
			<hr>
			<!-- 비밀번호 확인 입력 -->
			<div>
				<b>비밀번호확인</b>
				<input class="form-control" 
				type="password" placeholder="8~12자 영문,숫자,특수문자" 
				aria-label="default input example" id="pwd2">
				<div class="invalid-feedback" id="pwdFeedback"></div>
			</div>
			<hr>
			<!-- 개인정보 유효기간 버튼 -->
			<b>개인정보 유효기간</b>
			<div class="checkbox" style="margin-left: 170px;">	
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="personalAgree" id="personalAgree1" value="8">
					<label class="form-check-label" for="inlineRadio1">탈퇴 시까지</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="personalAgree" id="personalAgree2" value="9">
  					<label class="form-check-label" for="inlineRadio2">1년</label>
				</div>
			</div>
			<div id="personalPeriod">
				개인정보 유효기간 경과 이후 파기 또는 분리저장,관리합니다.
			</div>
			<hr>
			<!-- 이름 입력 -->
			<div>
				<b>이름</b>
			</div>
			<div>
				<input class="form-control" type="text" aria-label="default input example" placeholder="홍길동" id="name" name="name" value="<c:out value="${dto.name }"/>">
			</div>
			<hr>
			<!-- 성별 체크 버튼 -->
			<b>성별</b>
			<div class="checkbox-gender">	
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="gender" id="gender1" value="6">
					<label class="form-check-label" for="inlineRadio1">남</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="gender" id="gender2" value="7">
  					<label class="form-check-label" for="inlineRadio2">여</label>
				</div>
			</div>
			<hr>
			<!-- 이메일 입력 -->
			<b>이메일</b>
			<input class="form-control" type="text" aria-label="default input example" style="width: 250px; display: inline-block;" placeholder="이메일">@
			<div class="btn-group">
  				<select class="form-select" id="emailCode" name="emailCode">
  					<option>직접입력</option>
  					<option value="1">naver.com</option>
  					<option value="2">gmai.com</option>
  					<option value="3">daum.com</option>
  					<option value="4">nate.com</option>
  				</select>
  				
  				<!-- <ul class="dropdown-menu">
    				<li><a class="dropdown-item" href="#">naver.com</a></li>
    				<li><a class="dropdown-item" href="#">gmail.com</a></li>
    				<li><a class="dropdown-item" href="#">daum.com</a></li>
    				<li><a class="dropdown-item" href="#">nate.com</a></li>
  				</ul> -->
			</div>
			<hr>
			<!-- 번호 입력 -->
			<div>
				<b>휴대폰</b>
				<input class="form-control" type="text" placeholder="010 1234 5678" aria-label="default input example" id="inputPhone">			
				<button type="button" class="btn btn-light">인증번호받기</button>
			</div>
			<hr>
			<!-- 생년월일 -->
			<div>
				<b>생년월일</b>
				<input class="form-control" type="text" aria-label="default input example" placeholder="ex)1999-99-99" id="dob datepicker" name="dob" value="<c:out value="${dto.dob }"/>">
			</div>
			<hr>
			<!-- 주소등록 -->
			<div>
			<input type="text" id="sample4_postcode" placeholder="우편번호"  name="addressCode" value="<c:out value="${dto.addressCode}"/>">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
			<button type="button" id="btnAddressClear" class="btn-close" aria-label="Close"></button>
			<input type="text" id="sample4_roadAddress" placeholder="도로명주소"  name="address" value="<c:out value="${dto.address }"/>" style="width: 400px;">
			<input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="width: 400px;">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" placeholder="상세주소"  name="address2"  value="<c:out value="${dto.address2 }"/>" style="width: 400px;">
			</div>
			
			</form>
			<div id="agreep">
				<p>만 14세 미만 회원은 법정대리인(부모님) 동의를 받은 경우만 회원가입이 가능합니다.</p>
			</div>
			<div style="margin-top: 60px;">
				<!-- 회원가입 버튼 -->
				<span type="button" class="btn btn-secondary btn-lg" style="width: 100%" onclick="register();">가입완료</span>
				
				
				<!-- 회원가입 Modal -->
				<!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  					<div class="modal-dialog">
    					<div class="modal-content">
      						<div class="modal-header">
        						<h5 class="modal-title" id="exampleModalLabel">회원가입 성공</h5>
       				 			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      						</div>
      						<div class="modal-body">
       							 회원가입을 축하드립니다.
      						</div>
      						<div class="modal-footer">
        						<button type="button" class="btn btn-secondary" style="cursor: pointer;">닫기</button>
      						</div>
    					</div>
  					</div>
				</div>			 -->
			</div>
		</div><!-- register-wrap end -->	
			<!-- 푸터 -->
			<div id="registerFooter">
				<div id="footerCopyright">
					Copyright @ Interpark corp.ALL rights reserved.
				</div>
			</div>
					
		
			
		
		
		
		
		
	
</div><!-- wrap end -->	

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>

<!-- datepicker -->
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>


<!-- bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script> 


<script type="text/javascript" src="/resources/js/member/registerForm.js"></script> 
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f841982946149edfa0ce998dfc98894&libraries=services,clusterer,drawing"></script>
</body>
</html>