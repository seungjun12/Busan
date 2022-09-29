<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>예매확인/취소</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/memberCheckForm_style.css" rel="stylesheet" type="text/css">
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
	<!-- 매인랩 시작 -->
	<div class="mainWrap">
		<div class="rightCancel">
			<i class="fa-solid fa-star"></i>
			<span>예매내역확인,취소</span>
		</div>	
		<!-- 조회기간 선택 -->
		<div class="selectPeriod">
			<span id="colorRed">박승준</span>
			<span>님의 지난 일주일간의 티켓 예매내역 입니다.</span>
		</div>
		<div class="selectBox">
			<span id="fontSize">조회기간 선택</span>
			<button type="button" class="btn btn-danger">1주일</button>
			<button type="button" class="btn btn-outline-danger">1달</button>
			<button type="button" class="btn btn-outline-danger">3달</button>
			<button type="button" class="btn btn-outline-danger">1년</button>
		</div>
		<table class="table">
  			<thead class="table-secondary">
   				<td>예매일</td>
   				<td>예약번호</td>
   				<td>상품명</td>
   				<td>이용일/매수</td>
   				<td>취소가능일</td>
   				<td>현재상태</td>
  			</thead>
  			<tbody>
				<td>2022.08.16</td>
				<td>T1917720570</td>
				<td>SSG vs 삼성(일반 회원 상품)</td>
				<td>2022.08.18 14:00<br>1매</td>
				<td>2022.08.17 07:00</td>
				<td>예매</td>    
  			</tbody>
		</table>		
	</div><!-- mainWrap end -->
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlLogin = "/member/login";
	var goUrlRegister = "/member/register";
	var goUrlGame = "/main/gameChoice";
	var goUrlIndex = "/main/index";
	var goUrlMemberView = "/member/memberViewForm";
	var goUrlRegisterConfirm ="/member/registerConfirm";
	var goUrlTeamChoice = "/main/teamChoice";
	
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
		
		$("#btnRegisterConfirm").on("click",function(){
			$(location).attr("href",goUrlRegisterConfirm);
		});
		
		$("#btnTeamChoice").on("click",function(){
			$(location).attr("href",goUrlTeamChoice);
		});	
		
	
	
	</script>	
	
	
</div> <!-- wrap end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>