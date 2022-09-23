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
</head>
<body>
<div id="wrap">
	<form method="post" action="userInst" onclick="register()" id="register">
		<div id="top">
			<h3 id="topLogo" onclick="location.href='../main/indexForm.html'" style="cursor: pointer;">INTERPARK</h3> 
		</div>
		<hr style="margin-bottom: 0px;">
		<h5>정보입력</h5>
		<div id="register-wrap">
			<!-- 아이디 입력 -->
			<div id="id">
				<b>아이디</b>
				<input class="form-control" type="text" placeholder="6~20자 영문,숫자" aria-label="default input example" id="id" name="id" value="<c:out value="${dto.id }"/>">
			</div>
			<hr>
			<!-- 비밀번호 입력 -->
			<div>
				<b>비밀번호</b>
				<input class="form-control" type="password" placeholder="8~12자 영문,숫자,특수문자" aria-label="default input example" id="pwd" name="pwd" value="<c:out value="${dto.pwd }"/>">
			</div>
			<hr>
			<!-- 비밀번호 확인 입력 -->
			<div>
				<b>비밀번호확인</b>
				<input class="form-control" type="password" placeholder="8~12자 영문,숫자,특수문자" aria-label="default input example">
			</div>
			<hr>
			<!-- 개인정보 유효기간 버튼 -->
			<b>개인정보 유효기간</b>
			<div class="checkbox" style="margin-left: 170px;">	
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="inlineRadioOptions personalAgree" id="inlineRadio1 personalAgree1" value="8">
					<label class="form-check-label" for="inlineRadio1">탈퇴 시까지</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="inlineRadioOptions personalAgree" id="inlineRadio2 personalAgree2" value="9">
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
  					<input class="form-check-input" type="radio" name="inlineRadioOptions gender" id="inlineRadio1 gender1" value="6">
					<label class="form-check-label" for="inlineRadio1">남</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="inlineRadioOptions gender" id="inlineRadio2 gender2" value="7">
  					<label class="form-check-label" for="inlineRadio2">여</label>
				</div>
			</div>
			<hr>
			<!-- 이메일 입력 -->
			<b>이메일</b>
			<input class="form-control" type="text" aria-label="default input example" style="width: 250px; display: inline-block;" placeholder="이메일">@
			<div class="btn-group">
  				<button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" style="margin-left: 40px;">
    				선택
  				</button>
  				<ul class="dropdown-menu">
    				<li><a class="dropdown-item" href="#">naver.com</a></li>
    				<li><a class="dropdown-item" href="#">gmail.com</a></li>
    				<li><a class="dropdown-item" href="#">daum.com</a></li>
    				<li><a class="dropdown-item" href="#">nate.com</a></li>
  				</ul>
			</div>
			<hr>
			<!-- 번호 입력 -->
			<div>
				<b>휴대폰</b>
				<input class="form-control" type="text" placeholder="010 1234 5678" aria-label="default input example" id="inputPhone">			
				<button type="button" class="btn btn-light">인증번호받기</button>
			</div>
			<hr>
			<!-- 이벤트 수신 동의 -->
			<div class="form-check" style="margin-top: 30px;">
  				<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
  				<label class="form-check-label" for="flexRadioDefault1">
    				SMS, 이메일로 상품 및 이벤트 정보를 받겠습니다.(선택)
  				</label>
			</div>
			</form>
			<div id="agreep">
				<p>만 14세 미만 회원은 법정대리인(부모님) 동의를 받은 경우만 회원가입이 가능합니다.</p>
			</div>
			<div style="margin-top: 60px;">
				<!-- 회원가입 버튼 -->
				<button type="button" class="btn btn-secondary btn-lg" style="width: 100%" data-bs-toggle="modal" data-bs-target="#exampleModal" id="register">가입완료</button>
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
        						<button type="button" class="btn btn-secondary" onclick="location.href='../main/indexForm.html'" style="cursor: pointer;">닫기</button>
      						</div>
    					</div>
  					</div>
				</div>			
			</div>
		</div><!-- register-wrap end -->	
			<!-- 푸터 -->
			<div id="registerFooter">
				<div id="footerCopyright">
					Copyright @ Interpark corp.ALL rights reserved.
				</div>
			</div>
					
		
			
		
		
		
		
		
	
</div><!-- wrap end -->	

<script type="text/javascript">
	function register(){
		
		document.getElementById('register')
	}
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>