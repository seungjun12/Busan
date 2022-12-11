<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>게임 팀 선택화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/teamChoiceForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
</head>     
<body>
<div id="wrap">	
	<form id="form" name="form" method="post">
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간배너 s-->
	<%@include file="../../../common/xdmin/includeV1/middlevanner.jsp"%>
	<!-- 중간배너 e -->
	<!-- 하단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/bottomvanner.jsp"%>	
	<!-- 하단배너 e -->
	<!-- 배너 밑 이미지 영역 -->
	<div class="sportsWrap">
		<div>
			<div class="baseballImageWrap">
				<img alt="" src="/resources/img/baseballImage.png" style="width: 100%;" class="baseballImage">
			</div>
		</div>	
		<!-- 팀선택 카트 영역 -->
		<div class="sportsListWrap">
			<div class="card" style="width: 18rem;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB002.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h5 class="card-title">SSG 랜더스</h5>
    				<p class="card-text">인천SSG랜더스필드</p>
    				<p class="card-text" style="font-size: xx-small">SSG LANDERS</p>
    				<a type="button" class="btn btn-danger" id="btnGameChoice" style="cursor: pointer;">예매하기<a>
  				</div>
			</div>
			<div class="card" style="width: 18rem;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB003.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h5 class="card-title">키움 히어로즈</h5>
    				<p class="card-text">고척스카이돔</p>
    				<p class="card-text" style="font-size: xx-small">KIWOOM HEROES BASEBALL CLUB</p>
    				<a href="#" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">예매하기</a>
  					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">준비중입니다</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        다른 팀을 골라주세요.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					      </div>
					    </div>
					  </div>
					</div>
  				</div>
			</div>
			<div class="card" style="width: 18rem;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB004.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h5 class="card-title">두산 베어스</h5>
    				<p class="card-text">잠실야구장</p>
    				<p class="card-text" style="font-size: xx-small">DOOSAN BEARS BASEBALL CLUB</p>
    				<a href="#" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">예매하기</a>
  					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">준비중입니다</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        다른 팀을 골라주세요.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					      </div>
					    </div>
					  </div>
					</div>
  				</div>
			</div>
			<div class="card" style="width: 18rem; margin-top: 20px;">
  				<div class="card-image">
  					<img src="http://ticketimage.interpark.com/TicketImage/sports/web/large/PB002.png" class="card-img-top" alt="...">
  				</div>
  				<div class="card-body">
    				<h3 class="card-title" style="font-size: 19px;">SSG 랜더스 퓨처스 서머리그</h3>
    				<p class="card-text">인천SSG랜더스필드</p>
    				<p class="card-text" style="font-size: xx-small; margin-bottom: 6px;">SSG LANDERS FUTURES SUMMER LEGGUE</p>
    				<a href="#" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">예매하기<a>
  					<!-- Modal -->
					<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="staticBackdropLabel">준비중입니다</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					        다른 팀을 골라주세요.
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
					      </div>
					    </div>
					  </div>
  				</div>
			</div>		
		</div>
	
	
	</div><!-- sportWrap end -->
		
	
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	</form>
</div> <!-- wrap end -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	var goUrlLogin = "/member/login";
	var goUrlRegister = "/member/register";
	var goUrlGame = "/main/gameChoice";
	var goUrlIndex = "/main/index";
	var goUrlMemberView = "/member/memberViewForm";
	var goUrlRegisterConfirm ="/member/registerConfirm";
	var goUrlTeamChoice = "/main/teamChoice";
	
	var seq = $("input:hidden[name=sessSeq]");
	var form = $("form[name=form]");
	
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>