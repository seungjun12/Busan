<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>메인화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/indexForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+JP:wght@900&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrap">	
	<form id="indexForm" name="indexForm">
	<input type="hidden" id="sessSeq" name="sessSeq">
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간배너 s-->
	<%@include file="../../../common/xdmin/includeV1/middlevanner.jsp"%>
	<!-- 중간배너 e -->
	<!-- 하단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/bottomvanner.jsp"%>	
	<!-- 하단배너 e -->	
	<!-- 이미지 영역 -->
	
	<div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  		<div class="carousel-inner"> 
   			<div class="carousel-item active">
      			<img src="/resources/img/carousel1.png" class="d-block w-100" alt="..." <!-- id="image" -->
    		</div>
   			<div class="carousel-item">
      			<img src="/resources/img/carousel2.png" class="d-block w-100" alt="..." <!-- id="image" -->
    		</div>
    		<div class="carousel-item">
      			<img src="/resources/img/carousel3.png" class="d-block w-100" alt="..." <!-- id="image" -->
    		</div>
  		</div>  
	</div>
	<!-- 밑에 배너들 시작 -->
	<div id="contentWrap">
		<div id="contendTop">
			<img alt="" src="/resources/img/contentTop.png">
		</div>
		<div>
			<img alt="" src="/resources/img/contentMiddle.png">
		</div>
		<!-- 랭킹영역 --><!-- 안됭이ㅣㅣㅣㅇ 여기부터 ㄱㄱ -->
			<div class="rankigListWrap">
				<div class="rankingTitle">
					<h3><b>RANKING</b></h3>
				</div>
				<div class="container mt-5">
			      <ul class="list">
			        <li class="tab-button">Products</li>
			        <li class="tab-button active">Information</li>
			        <li class="tab-button">Shipping</li>
			      </ul>
			    
			      <div class="tab-content">
			        <p>상품설명입니다. Product</p>
			      </div>
			      <div class="tab-content show">
			        <p>상품정보입니다. Info</p>
			      </div>
			      <div class="tab-content">
			        <p>배송정보입니다. Shipping</p>
			      </div>
			    </div>
			</div>  
			
			
		
		
		
		<!-- 중간 이미지 -->
		<div>
			<img alt="" src="/resources/img/mainImage.png">
		</div>
		<!-- today banner -->
		<div class="todayBanner">
			<img alt="" src="/resources/img/todayBanner.png">
		</div>
		<!-- 뮤지컬 글 -->
		<div class="bannerAnswer">
			<h3>MUSICAL</h3>
		</div>
		<!-- 뮤지컬 이미지 -->
		<div>
			<img alt="" src="/resources/img/musicalImage.png">
		</div>
		<!-- 콘서트 글 -->
		<div class="bannerAnswer">
			<h3>CONCERT</h3>
		</div>
		<!-- 콘서트 이미지 -->
		<div>
			<img alt="" src="/resources/img/concertImage.png">		
		</div>
		<!-- play&classic글 -->
		<div class="bannerAnswer">
			<h3>PLAY&CLASSIC</h3>
		</div>
		<!-- play&classic이미지 -->
		<div>
			<img alt="" src="/resources/img/play&classicImage.png">		
		</div>
		<!-- 스포츠 영역 -->
		<div class="bannerAnswer">
			<h3>SPORTS%EXHIBITION&THEATER</h3>
		</div>
		<!-- 스포츠 이미지 -->
		<div>
			<img alt="" src="/resources/img/playImage.png">		
		</div>
		<!-- 하단 배너 -->
		<div class="bottomBanner">
			<img alt="" src="/resources/img/bottomBanner.png">
		</div>
	</div><!-- contentWrap end -->
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	</form>
	
</div> <!-- wrap end -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	
	
	
	
	
	var goUrlRegisterConfirm ="/member/registerConfirm";
	var goUrlTeamChoice = "/main/teamChoice";
	
	
	var seq = $("input:hidden[name=sessSeq]");
	var indexForm = $("form[name=indexForm]");
	
		
	
		
		
		
		
		
		
		
		
		/* $("#btnRegisterConfirm").on("click",function(){
			$(location).attr("href",goUrlRegisterConfirm);
		}); */
		
		$("#btnTeamChoice").on("click",function(){
			$(location).attr("href",goUrlTeamChoice);
		});		
		
		
		
	
	
	</script>

</body>
</html>