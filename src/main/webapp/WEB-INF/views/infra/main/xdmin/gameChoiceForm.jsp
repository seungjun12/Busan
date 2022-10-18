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
			<c:choose>
				<c:when test="${fn:length(list) eq 0 }">
					<div class="gameTable">
						경기가 없습니다.
					</div>
				</c:when>
				<c:otherwise>
				<c:forEach items="${list }" var="list" varStatus="status"> 
					<div class="gameTable">
						<!-- 게임 날짜 -->
						<div class="gameDate">
							<span class="fontDate"> <c:out value="${list.dob }"/></span>
							<!-- <span class="fontWeak">(수)</span> -->
						</div>
						<!-- 게임 시간 -->
						<div class="gameTime">
							<span class="fontTime"><c:out value="${list.time }"/></span>
						</div>
						<!-- 게임 하는 팀들  -->
						<div class="teamMatch">
							<div class="team1">
								<img alt="ssg로고입니다" src="/resources/img/ssgLogo2.png">
								<span class="logoName"><c:out value="${list.whoHome }"/></span>
							</div>
							<div class="vs">
								<span id="vs">VS</span>
							</div>
							<div class="team2">
								<img alt="lg로고입니다" src="/resources/img/lgLogo.png">
								<span class="logoName"><c:out value="${list.whoAway }"/></span>
							</div>
						</div>
						<div class="div"></div>
						<!-- 경기 하는 곳 -->
						<div class="ground">
							<div>
								<div>홈</div>
								<span><c:out value="${list.ground }"/></span>
							</div>
						</div>
						<!-- 예매하기 버튼 -->
						<input type="hidden" id="gameseq" name="gameseq">
						<!-- <button type="button" class="btn btn-danger" style="width: 128px; float: right"  >예매하기</button> -->
						<button type="button" class="btn btn-danger" style="width: 128px; float: right" data-bs-toggle="modal" data-bs-target="#staticBackdrops" >예매하기</button> 
						
						<div class="modal fade" id="staticBackdrops" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true" >
							<div class="modal-dialog">
  								<div class="modal-content">
    								<div class="modal-header">
      									<h1 class="modal-title fs-5" id="staticBackdropLabel">부정예매방지</h1>
      									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    								</div>
    								<div class="modal-body">
      									<label for="captcha" style="display:block">자동 로그인 방지</label>
											<div style="overflow:hidden">
												<div style="float:left">
													<img title="캡차이미지" src="/captchaImg.do" alt="캡처이미지"/ id="imgSelect">
													<div id="ccaudio" style="display:none"></div>
												</div>
											</div>
											<div style="padding:3px">
												<input id="reload" type="button" onclick="javaScript:getImage()" value="새로고침"/>
												<input id="soundOn" type="button" onclick="javaScript:audio()" value="음성듣기"/>
											</div>
											<div style="padding:3px">	
												<input id="answer" type="text" value="" name="answer">
												<input id="btnCheck" type="button" value="확인" data-bs-dismiss="modal"><!-- data-bs-dismiss="modal" -->
											</div> <!-- onclick="popupSeatChoice()" --> 
    								</div>
    								<!-- <div class="modal-footer">
      									<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      									<button type="button" class="btn btn-primary">Understood</button>
    								</div> -->
  								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				</c:otherwise>
			</c:choose>
					
											<!-- </div> --> 		
		</div><!-- sportsDetailContents end -->
		<!-- 경기 설명영역 s -->
		<%@include file="../../../common/xdmin/includeV1/gameChoiceInformation.jsp"%>
		<!-- 경기 설명영역 e -->
		</div><!-- wrap end -->
	</div>	
	</form>	
		
	
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	
	
	


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
	
	function popupSeatChoice(){
		var url = "/main/seatChoice";
		var option = "width=820, height=500"
		window.open(url,"",option);
	}
	
	
	
	$(function(){
        // tab 메뉴를 클릭하였을 때 동작함
        $(".tab ul li").click(function(){ 
             
            // 현재 선택되어있던 메뉴들을 초기화함
            $(".tab ul li").removeClass('on');
            $(".tab .conBox").removeClass('on');
 
            // 선택된 메뉴에 on 클래스를 주어 표기함
            $(this).addClass('on');
 
            // 선택된 탭의 data 값으로 content box를 선택함
            $("#"+$(this).data('id')).addClass('on');
        });
    });
        
</script>

<script>

/* 문자열 체크 */ 
$("#btnCheck").on("click", function(){
	/* if(validation() == false) return false; */
	
	$.ajax({
		async: true 
		,cache: false
		,type: "post"
		/* ,dataType:"json" */
		,url: "/chkAnswer.do"
		/* ,data : $("#formLogin").serialize() */
		,data : { "answer" : $("#answer").val()}
		,success: function(response) {
			if(response.rt == "success") {
				/* if(response.changePwd == "true") {
					location.href = URL_CHANGE_PWD_FORM;
				} else {
					location.href = URL_INDEX_ADMIN;
				} */	
				alert("맞습니다"); 
				 
				
						var url = "/main/seatChoice";
						var option = "width=820, height=500"
						window.open(url,"",option);
					
				
			} else {
				alert("틀렸습니다");
			}
		}
		,error : function(jqXHR, textStatus, errorThrown){
			alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
		}
	});
});
/*매번 랜덤값을 파라미터로 전달하는 이유 : IE의 경우 매번 다른 임의 값을 전달하지 않으면 '새로고침' 클릭해도 정상 호출되지 않아 이미지가 변경되지 않는 문제가 발생된다*/
function audio(){
	var rand = Math.random();
	var uAgent = navigator.userAgent;
	var soundUrl = '${ctx}/captchaAudio.do?rand='+rand;
	if(uAgent.indexOf('Trident')>-1 || uAgent.indexOf('MISE')>-1){	/*IE 경우 */
		audioPlayer(soundUrl);
	}else if(!!document.createElement('audio').canPlayType){ /*Chrome 경우 */
		try {
			new Audio(soundUrl).play();
		} catch (e) {
			audioPlayer(soundUrl);
		}
	}else{
		window.open(soundUrl,'','width=1,height=1');
	}
}
function getImage(){
	var rand = Math.random();
	var url = '${ctx}/captchaImg.do?rand='+rand;
	document.querySelector('#imgSelect').setAttribute('src', url);
}
function audioPlayer(objUrl){
	document.querySelector('#ccaudio').innerHTML = '<bgsoun src="' +objUrl +'">';
}

</script>

</body>
</html>