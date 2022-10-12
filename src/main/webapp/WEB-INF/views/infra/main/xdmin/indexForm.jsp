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
	<form method="post" name="form">
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
		<!-- 	<div class="rankigListWrap">
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
			</div>   -->
			
			
		
		
		
		<!-- 중간 이미지 -->
		<div class="flexBanner">
			<img src="http://ticketimage.interpark.com/TCMS4/Main/202109/MainBarBanner_MainBarBanner6_291cdc4c-5cd8-4114-9a0c-747df0724522.jpg" alt="티켓MD샵">
		</div>
		<!-- 티켓 투데이 -->
		<div class="ticketToday">
			<div class="ticketTodayBanners">
				<div class="ticketTodayCube hasRoll goodMorning">
					<div class="items selected">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span>10월의 혜택! 혜택 어10션~</span>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202209/TicketTodayNew_TicketTodayGoodMorning_b7079efd-092e-40a6-b69e-92a3fd4440d9.jpg" alt="">
					</div>
				</div>
				<div class="ticketTodayCube hasRoll toping">
					<div class="items selected">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span>10%</span>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202209/TicketTodayNew_TicketTodayToping_677fd852-7782-4e34-aad3-c8c165d18846.jpg" alt="">
					</div>
				</div>
				<div class="ticketTodayCube hasRoll tchu">
					<div class="items selected">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span></span>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202210/TicketTodayNew_TicketTodayBanner_a0aadf1e-53d2-42c5-8432-f05fd4921f1a.jpg" alt="">
					</div>
				</div>
				
				<div class="ticketTodayCube hasRoll event" >
					<div class="items selected">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span>청소년 할일 20%</span>
								<b>폴링워텅 : 감괴</b>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202210/TicketTodayNew_TicketTodayEvent_42344f9d-517e-4d8c-af8a-02a045e3a651.jpg" alt="">
					</div>
				</div>
			</div>
		
		
			<div class="ticketTodayTitlemusical"></div>
			<!-- musical -->
			<div class="todayBanners">
				<div class="ticketTodayCube hasRoll sale" >
					<div class="items">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span>마티네 할인 30%</span>
								<b>트레드밀</b>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202209/TicketTodayNew_TicketTodayMusical_5605c2ed-800d-4e43-9d32-6b8ab57759a6.jpg" alt="트레드밀">
					</div>
				</div>
				<div class="ticketTodayCube hasRoll sale" >
					<div class="items">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span>조기예매 할인 30%</span>
								<b>범옹</b>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202209/TicketTodayNew_TicketTodayMusical_164564ce-0666-4cb4-bc81-bcab64d75d77.jpg" alt="범옹">
					</div>
				</div>
				<div class="ticketTodayCube hasRoll sale" >
					<div class="items">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span>브론테 할인 20%</span>
								<b>브론테</b>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202209/TicketTodayNew_TicketTodayMusical_42e408b2-5d95-4fd8-a4bd-beead079aaef.jpg" alt="브론테">
					</div>
				</div>
				<div class="ticketTodayCube hasRoll sale" >
					<div class="items">
						<div class="contents">
							<div class="label"></div>
							<span class="contentTxt">
								<span>청소년 할인 20%</span>
								<b>알로하, 나의 엄마들</b>
							</span>
						</div>
						<img src="http://ticketimage.interpark.com/TCMS4/Main/202210/TicketTodayNew_TicketTodayMusical_c5ee1f21-b771-4fe0-ab45-26c5bf622672.jpg" alt="알로하, 나의 엄마들">
					</div>
				</div>
			</div><!-- musical end -->
		
		
		</div> <!-- ticketToday end -->
		
		<!-- 하단 배너 -->
		<div class="longBanner">
			<img src="http://ticketimage.interpark.com/TCMS4/Main/202207/MainBarBanner_MainBarBanner2_8cdd2f09-3a23-48b2-be83-74787d599dec.jpg" alt="신바람 삼대">
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
	var form = $("form[name=form]");
	
		
	
		
		
		
		
		
		
		
		
		/* $("#btnRegisterConfirm").on("click",function(){
			$(location).attr("href",goUrlRegisterConfirm);
		}); */
		
		$("#btnTeamChoice").on("click",function(){
			$(location).attr("href",goUrlTeamChoice);
		});		
		
		
		
	
	
	</script>

</body>
</html>