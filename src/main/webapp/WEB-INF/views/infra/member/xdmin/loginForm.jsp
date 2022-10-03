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
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간배너 s-->
	<%@include file="../../../common/xdmin/includeV1/middlevanner.jsp"%>
	<!-- 중간배너 e -->
	<!-- 하단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/bottomvanner.jsp"%>	
	<!-- 하단배너 e -->
	<!-- 로그인 영역 -->
	<div id="login">
		<!-- 아이디 비번 입력영역 -->
		<!-- 오른쪽 이미지 영역 -->
		<div id="loginImage">
			<img alt="" src="/resources/img/loginRightPhone.png">
			<img alt="" src="/resources/img/loginRightAdd.png" style="margin-top: 10px;">
		</div>
		<form method="post" id="loginForm" name="loginForm">
		<!-- 아이디 비번 입력영역 -->
		<div id="loginInput">
			<input class="form-control" type="text" aria-label="default input example" placeholder="아이디" id="id" name="id" value="<c:out value="${dto.id}"/>">
			<input class="form-control" type="password" aria-label="default input example" placeholder="비밀번호" style="margin-top: 10px;" id="pwd" name="pwd" value="<c:out value="${dto.pwd}"/>">
		<!-- 로그인 버튼 -->	
			<button type="button" class="btn btn-danger" style="width: 420px; margin-top: 15px;" id="btnLoginp">로그인</button>
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
		</form>
		<!-- 로그인 밑에 설명영역 -->
		<div id="loginAnswer">
			개인정보 보호를 위해 공용 PC에서 사용 후 SNSN 계정의 로그아웃 상태를 반드시 확인해주세요.
			<hr>
		</div>
		<!-- 아이디 비번 찾기,회원가입 영역 -->
		<div id="loginBottom">
			<a type="button" id="btnIdFind"  style="cursor: pointer;">아이디 찾기</a>
			<a style="margin-left: 10px;">비밀번호 찾기</a>
			<a style="margin-left: 10px;" type="button" class="btnRegister">회원가입</a>
		</div>
		<div id="loginBottomImage">
			<img alt="" src="/resources/img/loginBottomImg.png">
		</div>
	</div><!-- login end -->
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	
	
	
</div> <!-- wrap end -->

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>	
	
	/* var goUrlIndexView = "/main/indexView"; */
	var goUrlIdFind = "/member/findId"
	
	
	$("#btnIdFind").on("click",function(){
		$(location).attr("href",goUrlIdFind);
	});
	
	/* 로그인 */ 
	$("#btnLoginp").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "pwd" : $("#pwd").val(), /* "autoLogin" : $("#autoLogin").is(":checked") */}
			,success: function(response) {
				if(response.rt == "success") {
					/* if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_INDEX_ADMIN;
					} */
					
					location.href = goUrlIndex;
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
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