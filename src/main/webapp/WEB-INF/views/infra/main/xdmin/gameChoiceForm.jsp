<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>게임선택화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/gameChoiceForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&display=swap" rel="stylesheet">

</head>
<body>
<div>	
	<form>
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간배너 s-->
	<%@include file="../../../common/xdmin/includeV1/middlevanner.jsp"%>
	<!-- 중간배너 e -->
	<!-- 하단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/bottomvanner.jsp"%>	
	<!-- 하단배너 e -->
	<div class="wrap">	
		<!-- 경기 팀 디테일 영역 -->
		<div class="sportsDetailHeader">
			<div class="sportsDetailContent">
				<div class="divTeamName teamName">
					SSG 랜더스
				</div>
				<!-- <div class="dropdown"> --><!-- 리스트 정리해야됨 -->
	  				<button class="btn btn-light dropdown-toggle selectDetail" type="button" data-bs-toggle="dropdown" aria-expanded="false" id="selectDetailSports">
	    				야구
	  				</button>
	  				<ul class="dropdown-menu">
	    				<li><a class="dropdown-item" href="#">야구</a></li>
	    				<li><a class="dropdown-item" href="#">축구</a></li>
	    				<li><a class="dropdown-item" href="#">E스포츠</a></li>
	  				</ul>
				<!-- </div> -->
				<!-- <div class="dropdown"> -->
	  				<button class="btn btn-light dropdown-toggle selectDetail" type="button" data-bs-toggle="dropdown" aria-expanded="false">
	    				SSG 랜더스
	  				</button>
	  				<ul class="dropdown-menu">
	    				<li><a class="dropdown-item" href="#">키움 히어로즈</a></li>
	    				<li><a class="dropdown-item" href="#">두산 베어스</a></li>
	    				<li><a class="dropdown-item" href="#">SSG 랜더스</a></li>
	    				<li><a class="dropdown-item" href="#">SSG 랜더스 퓨처스 서머리그</a></li>
	  				</ul>
				<!-- </div> -->			
			</div>
		</div>
		<!-- 경기 팀 이미지 -->
		<div class="sportsDetailTop">
		 	<img alt="" src="/resources/img/sportsDetailTop.png" id="sportsDetailTopImage">
		</div>
		<!-- 경기 선택 영역 -->
		<div class="sportsDetailContents">
			<div class="buyTitle">
				<b>예매하기</b>
			</div>
			<!-- 게임 테이블 -->
			<div class="gameTable">
				<!-- 게임 날짜 -->
				<div class="gameDate">
					<span class="fontDate"> 08.10</span>
					<span class="fontWeak">(수)</span>
				</div>
				<!-- 게임 시간 -->
				<div class="gameTime">
					<span class="fontTime">18:30</span>
				</div>
				<!-- 게임 하는 팀들  -->
				<div class="teamMatch">
					<div class="team1">
						<img alt="ssg로고입니다" src="/resources/img/ssgLogo2.png">
						<span class="logoName">SSG 랜더스</span>
					</div>
					<div class="vs">
						<span id="vs">VS</span>
					</div>
					<div class="team2">
						<img alt="lg로고입니다" src="/resources/img/lgLogo.png">
						<span class="logoName">LG 트윈스</span>
					</div>
				</div>
				<div class="div"></div>
				<!-- 경기 하는 곳 -->
				<div class="ground">
					<div>
						<div>홈</div>
						<span>인천SSG랜더스필드</span>
					</div>
				</div>
				<!-- 예매하기 버튼 -->
				<button type="button" class="btn btn-danger" style="width: 128px;" data-bs-toggle="modal" data-bs-target="#staticBackdrop">예매하기</button>
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				  <div class="modal-dialog">
				    <div class="modal-content">
				      <div class="modal-header">
				        <h5 class="modal-title" id="staticBackdropLabel">문자를 입력해주세요.</h5>
				        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				      </div>
				      <div class="modal-body">
				        <p>부정예매방지를 위해 아래의 문자를 입력해주세요.</p>
				        <p>인증 후 좌석을 선택할 수 있습니다.</p>
				        <img alt="문자들입니다" src="">
				      </div>
				      <div class="modal-footer">
				        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><a href="javascript:popup()" style="cursor: pointer;">확인</a></button>
				      </div>
				    </div>
				  </div>
				</div>
			</div>
			<div class="gameTable">
				<!-- 게임 날짜 -->
				<div class="gameDate">
					<span class="fontDate"> 08.11</span>
					<span class="fontWeak">(목)</span>
				</div>
				<!-- 게임 시간 -->
				<div class="gameTime">
					<span class="fontTime">18:00</span>
				</div>
				<!-- 게임 하는 팀들  -->
				<div class="teamMatch">
					<div class="team1">
						<img alt="ssg로고입니다" src="/resources/img/ssgLogo2.png">
						<span class="logoName">SSG 랜더스</span>
					</div>
					<div class="vs">
						<span id="vs">VS</span>
					</div>
					<div class="team2">
						<img alt="lg로고입니다" src="/resources/img/lgLogo.png">
						<span class="logoName">LG 트윈스</span>
					</div>
				</div>
				<div class="div"></div>
				<!-- 경기 하는 곳 -->
				<div class="ground">
					<div>
						<div>홈</div>
						<span>인천SSG랜더스필드</span>
					</div>
				</div>
				<!-- 예매하기 버튼 -->
				<button type="button" class="btn btn-danger" style="width: 128px;">예매하기</button>
			</div>
			<!-- 예매 날짜 아직 아닌곳-->
			<div class="nogameTable">
				<!-- 게임 날짜 -->
				<div class="gameDate">
					<span class="fontDate"> 08.12</span>
					<span class="fontWeak">(금)</span>
				</div>
				<!-- 게임 시간 -->
				<div class="gameTime">
					<span class="fontTime">18:30</span>
				</div>
				<!-- 게임 하는 팀들  -->
				<div class="teamMatch">
					<div class="team1">
						<img alt="ssg로고입니다" src="/resources/img/ssgLogo2.png">
						<span class="logoName">SSG 랜더스</span>
					</div>
					<div class="vs">
						<span id="vs">VS</span>
					</div>
					<div class="team2">
						<img alt="삼성로고 입니다" src="/resources/img/samsungLogo.png">
						<span class="logoName">삼성 라이온즈</span>
					</div>
				</div>
				<div class="div"></div>
				<!-- 경기 하는 곳 -->
				<div class="ground">
					<div>
						<div>홈</div>
						<span>인천SSG랜더스필드</span>
					</div>
				</div>
				<!-- 예매 날짜 알려주는 곳 -->
				<div class="btns">
					<span style="display: table-cell; vertical-align: middle; text-align: center;">판매예정</span>
				</div>
			</div>
			<!-- 예매 날짜 아직 아닌곳-->
			<div class="nogameTable">
				<!-- 게임 날짜 -->
				<div class="gameDate">
					<span class="fontDate"> 08.13</span>
					<span class="fontWeak">(토)</span>
				</div>
				<!-- 게임 시간 -->
				<div class="gameTime">
					<span class="fontTime">14:00</span>
				</div>
				<!-- 게임 하는 팀들  -->
				<div class="teamMatch">
					<div class="team1">
						<img alt="ssg로고입니다" src="/resources/img/ssgLogo2.png">
						<span class="logoName">SSG 랜더스</span>
					</div>
					<div class="vs">
						<span id="vs">VS</span>
					</div>
					<div class="team2">
						<img alt="삼성로고 입니다" src="/resources/img/samsungLogo.png">
						<span class="logoName">삼성 라이온즈</span>
					</div>
				</div>
				<div class="div"></div>
				<!-- 경기 하는 곳 -->
				<div class="ground">
					<div>
						<div>홈</div>
						<span>인천SSG랜더스필드</span>
					</div>
				</div>
				<!-- 예매 날짜 알려주는 곳 -->
				<div class="btns">
					<span style="display: table-cell; vertical-align: middle; text-align: center;">판매예정</span>
				</div>
			</div>					
		</div><!-- sportsDetailContents end -->
		<!-- 밑에 설명영역 탭 -->
		<div class="sportsTabWrapper tabModule">
			<ul>
				<li class="tab-link current active" data-tab-target="#tab1"><span>예매/관람안내</span>
				<li class="tab-link" data-tab-target="#tab2"><span>좌석도/가격</span>
				<li class="tab-link" data-tab-target="#tab3"><span>예매TIP</span>
			</ul>	
			<!-- 예매/관람안내 -->
			<div class="tabContentsWrapper tab-content current" id="tab1">
				<div class="tabcontentsWrap current">
				<h3><b>예매안내</b></h3>
				<div class="dataContents">	
					<p>티켓 구매 안내</p>
					<p></p>
					<p></p>
					<p>1. 온라인 예매와 현장 구매가 가능합니다(휠체어 장애인석 등 할인 권종 포함)</p>
					<p>&nbsp;*현장 매표소는 주중 경기 시작 2시간 30분 전,주말 경기 시작 3시간 전부터 운영하며,6회 말까지 운영합니다.</p>
					<p>&nbsp;*7회 초 이후 무료 입장은 운영하지 않습니다.</p>
					<p></p>
					<p>2. 온라인 예매: 경기 4일 전 오전 11시 ~ 경기 1시간 후 까지 가능</p>
					<p>3. 온라인 예매 취소: 경기 7시간 전 까지 가능</p>
					<p>4. 온라인 예매 정책</p>
					<p>&nbsp;1)매수 제한: 1번에 4매까지 가능하,2회 예매 가능</p>
					<p>&nbsp;2)예매 수수료: 장당 1,000원</p>
				</div>
				<h3><b>티켓 수령 및 입장</b></h3>
				<div class="dataContents">
					<p>1. 티켓 수령 방법이 '모바일 티켓'인 경우 종이 티켓 발권이 불가합니다.(무인 발권기도 이용 불가)</p>
					<p>&nbsp;*모바일 티켓은 모바일 티켓 앱에서 예약 번호 혹은 바코드가 실시간으로 움직이는 티켓으로만 입장 가능,캡쳐 혹은 이미지는 불가</p>
					<p>&nbsp;*티켓 선물하기 기능으로 모바일 티켓 선물한 경우 취소 불가 (선물한 티켓 반납 후 취소 가능)</p>
					<p></p>
					<p>
						2. 티켓 수령 방법이 '현장 수령'인 경우에만 매표소 또는 무인 발권기에서 종이 티켓 발권이 가능합니다
						<br>
						&nbsp;&nbsp;(예매자 성명 및 생년월일,예매 번호 제시 필요)
					</p>
					<p></p>
					<p>
						&nbsp;* 경로/청소년/초등학생/군인/국가유공자/장애인/다자녀 등 본인 확인이 필요한 경우, 현장 매표소에 증빙 서류 제시 및
						<br>
						&nbsp;&nbsp;본인 확인 후 티켓 수령이 가능합니다.
					</p>
					<p></p>
					<p>&nbsp;* 군인 할인 대상은 일반 사병 및 공익근무요원이며, 직업군인은 제외됩니다.</p>
					<p>&nbsp;* 키즈 클럽 : 온라인 예매한 경우 키즈 클럽 카드 확인 후 발권, 현장 구매하는 경우 예매용 난수번호 제시 후 구매 가능합니다. </p>
					<p>3. 미취학 아동 입장 안내</p>
					<p>&nbsp;* 36개월 이상 유아는 무료 입장 대상이 아니며, 티켓 예매가 필요합니다. (일반석 및 몰리스 그린존인 경우 초등학생 권종 선택 가능)</p>					
					<p>&nbsp;* 36개월 미만 영아는 무료 입장 대상이나, 별도의 좌석이 제공되지 않으며, 출생 일자 확인이 필요합니다.  </p>
					<p>
						4. 경기장 내 안전과 쾌적한 관람을 위해,캔/병/1L 초과 PET 음료어ㅢ 반입이 제한됩니다. 주류의 경우 알코올 도수 6도 이하인
						<br>
						&nbsp;&nbsp;경우에만 반입 가능합니다.
					</p>
				</div>
				<h3><b>인천 SSG 랜더스필드 이용 안내</b></h3>
				<div class="dataContents">
					<p>1. 전 좌석 지정석으로 운영합니다(몰리스 그린존 제외). 본인이 구매한 좌석만 이용 부탁드립니다.</p>
					<p>2. 단체석 이용 안내</p>
					<p>- 스카이박스, 미니스카이박스, 외야파티덱, 바비큐존, 내/외야패밀리존, 테이블석, 홈런커플존 등 단체석은 부분 구매 불가합니다.</p>
					<p>&nbsp;* ex) 스카이박스 12인실의 경우, 12매를 모두 구매해야 합니다. </p>
					<p>3. 일행이 추가된 경우 결제 안내</p>
					<p>- 스카이박스, 미니스카이박스, 외야파티덱, 바비큐존 이용 시 일행이 추가된 경우, 현장 매표소에서 추가 금액을 지불하고 입장 가능합니다.</p>
					<p>4. 이마트/트레이더스 OPEN 바비큐존 안내</p>
					<p>- 인근 매장(디딤푸드코트)에서 불판, 전기그릴 및 각종 조리도구 대여(15,000원) 및 삼결살 구매 가능합니다.</p>
					<p>5. 몰리스 그린존 안내</p>
					<p>- 잔디 위에서 돗자리, 텐트(시야 방해 방지 위해 돌길 뒤로만 설치 가능)와 함께 관람 가능한 구역입니다.</p>
					<p>- 몰리스 그린존을 포함해 인천 SSG 랜더스필드 전체는 반려동물 출입이 금지됩니다(시각장애인 안내견 제외).</p>
				</div>
				<h3><b>취소/환불 정책</b></h3>
					<div class="dataContents">
						<p>1. 취소 수수료</p>
						<p>* 예매 당일은 취소 수수료가 없으며,예매 수수료도 환불됩니다.</p>
						<p>*예매 익일부터는 티켓 구매 금액의 10%가 취소 수수료가 부과되며,예매 수수료도 환불되지 않습니다.</p>
						<p>2. 경기일자 및 좌석 변경은 불가합니다.</p>
						<p>3. 부분취소는 불가합니다. 기존 예매 전체 취소 후 재예매가 필요합니다. 취소 좌석에 대한 좌석 선점은 보장되지 않습니다.</p>
						<p>4. 재예매/예매 대기 서비스는 이용이 불가합니다.</p>
						<p>5. 우천/미세먼지 취소 시 예매 및 카드 구입은 자동 결제 취소되며, 현장 현금 구매분은 경기 당일 매표소로 티켓을 가져오시면 환불 가능합니다.</p>
						<p></p>
						<span style="background-color: yellow;">코로나19관련 공지사항</span>
						<p></p>
						<p>1. 마스크를 반드시 착용해주시기 바랍니다</p>
						<p>2. 입장 시 발열체크를 진행하며,37.5도 이상인 경우 입장이 불가능합니다.</p>
						<p>3. 안전수칙을 준수하지 않을 경우 'KBO 안전 가이드라인'에 따라 경고 및 퇴장 조치될 수 있습니다.</p>
					</div>
					<div class="dataContents">
						<img alt="경기장 규칙사진입니다." src="http://ticketimage.interpark.com/TicketImage/sportsteam/editer/2022/06/29/dea67e53.jpg" style="width: 100%;">
					</div>
				</div>
			</div>
			<!-- 좌석도/가격 -->
			<div class="tabContentsWrapper tab-content current" id="tab2">
				<div class="tabcontentsWrap current">
					<div class="dataContents">	
						<img alt="경기좌석도 입니다." src="http://ticketimage.interpark.com/TicketImage/sportsteam/editer/2022/04/01/4d7aa74d.gif" style="width: 100%;">
					</div>
					<div class="dataContents">
						<img alt="" src="http://ticketimage.interpark.com/TicketImage/sportsteam/editer/2022/04/04/6c73286a.PNG" style="width: 100%;">
					</div>
					<div class="dataContents">
						<img alt="" src="http://ticketimage.interpark.com/TicketImage/sportsteam/editer/2022/05/26/f70c0664.jpg" style="width: 100%;">
					</div>
				</div>
			</div>
		
		
		</div>	
		
		
	
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	
	</form>
	
</div> <!-- wrap end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
        $(function(){
        	$('ul.tab li').click(function(){
        		var activeTab = $(this).attr('data-tab');
        		$('ul.tab li').removeClass('on');
        		$('.tabcont').removeClass('on');
        		$(this).addClass('on');
        		$('#' + activeTab).addClass('on');
        	})
        })
        
	var goUrlLogin = "/member/login";
	var goUrlRegister = "/member/register";
	var goUrlGame = "/main/gameChoice";
	var goUrlIndex = "/main/index";
	var goUrlMemberView = "/member/memberViewForm";
        
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
        
</script>
<script langauge="javascript">
	function popup(){
		var url="seatChoiceForm.html";
		var option="width544px, height=300px, top=200px"
		window.open(url,"",option);
	}
</script>
<script src="src/index.js"></script>
</body>
</html>