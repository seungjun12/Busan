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
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간배너 s -->
	<%@include file="../../../common/xdmin/includeV1/viewTopVanner.jsp"%>
	<!-- 중간배너 e -->
	<!-- 메인 시작 -->
	<form id="MForm" name="MForm">
	<input type="hidden" id="sessSeq" name="sessSeq">
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
							<img alt="하트모양입니다" src="/resources/img/heartImg.png">
							<p class="infoTxt">
								<c:out value="${sessName }"/>님은 현재
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
							<a href="javascript:goInformation(<c:out value="${sessSeq }"/>)" style="cursor: pointer; text-decoration: none; color: black">  
							<!-- <a id="btnInformationMod" style="cursor: pointer;"> -->
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
							<a id="btnPwdMod" style="cursor: pointer;">
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
	</form>
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
	var goUrlRegisterConfirm ="/member/registerConfirm";
	var seq = $("input:hidden[name=sessSeq]")
	var form = $("form[name=MForm]");
	
	$("#btnInformationMod").on("click",function(){
		$(location).attr("href",goUrlInformationMod);
	}); 

	$("#btnPwdMod").on("click",function(){
		$(location).attr("href",goUrlPwdMod);
	});
	
	$(".btnIndex").on("click",function(){
		$(location).attr("href",goUrlIndex);
	});
	
	$("#btnRegisterConfirm").on("click",function(){
		$(location).attr("href",goUrlRegisterConfirm);
	});
	
	goInformation = function(seqValue){
		seq.val(seqValue);
		form.attr("action" ,goUrlInformationMod).submit();
	};
	
	/* goPwdMod = function(seqValue){
		seq.val(seqValue);
		form.attr("action" , goUrlPwdMod).submit();
	}; */

	
</script>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>