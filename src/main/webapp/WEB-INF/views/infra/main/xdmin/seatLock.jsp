<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>부정예매방지</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/seatLock_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
</head>   
<body>
<form method="post" name="form" id="form">
<%-- <input type="hidden" name="seq" value="<c:out value="${sessSeq }"/>"> --%>
<div class="wrap">
	<div class="contentWrap">
		<div style="width: 300px; margin: auto;">
			<div class="head">
				<h3>문자를 입력해주세요</h3>
			</div>
			<div style="margin-top: 30px;">
				<p>부정예매방지를 위해 아래의 문자를 입력해주세요.</p>
				<p>인증 후 좌석을 선택할 수 있습니다.</p>
			</div>
			<div>
				<label for="captcha" style="display:block"></label>
				<div style="overflow:hidden">
					<div style="float:left">
						<img title="캡차이미지" src="/captchaImg.do" alt="캡처이미지"/ id="imgSelect" style="margin-left: 76px;">
						<div id="ccaudio" style="display:none"></div>
					</div>
				</div>
				<div style="padding:3px">
					<input id="reload" type="button" onclick="javaScript:getImage()" value="새로고침"/>
					<input id="soundOn" type="button" onclick="javaScript:audio()" value="음성듣기"/>
				</div>
				<div style="padding:3px">	
					<input id="answer" type="text" value="" name="answer">
					<input id="btnCheck" type="button" value="확인" ><!-- data-bs-dismiss="modal" -->
					<input type="text" value="${seatItem.gameSeq }">
				</div> <!-- onclick="popupSeatChoice()" --> 
			</div>
		</div>
	</div>
</div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
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
						
						
						
						location.href = url;
						
						
						
						/* window.open(url,"",option);
						
						seq.val();
						form.attr("action" , url).subit();
						
						window.close(); */
						
				
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