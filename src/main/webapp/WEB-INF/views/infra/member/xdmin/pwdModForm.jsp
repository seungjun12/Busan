<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>비밀번호변경</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/pwdModForm_style.css" rel="stylesheet" type="text/css">
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
	<!-- 매인 시작 -->
	<div class="mainWrap">
		<div id="openIdWrap">
			<div class="logoTop">
				<h1>INTERPARK</h1>
			</div>
			<div class="whiteWrap">
			<!-- 왼쪽배너 s -->
			<%@include file="../../../common/xdmin/includeV1/viewLeftVanner.jsp"%>
			<!-- 왼쪽배너 e -->
				<!-- 오른쪽 영역 -->
				<form id="mform" name="mform" method="post" >
				<input type="hidden"  name="sessSeq" id="sessSeq" value="<c:out value="${sessSeq }"/>">
				<div class="rightWrap">
					<div class="modifyWrap">
						<div class="memberHead">
							<h4>비밀번호변경</h4>
						</div>
						<div class="center">
							<span>주기적인</span>
							<span id="redColor">비밀번호 변경</span>
							<span>을 통해</span>
							<br>
							<p>개인정보를 안전하게 보호하세요</p>
						</div>
						<!-- 새 비밀번호입력 -->
						<%-- <c:out value="${sessSeq }"/> --%>
						<%-- <input type="hidden" id="seq" name="seq" value="<c:out value="${item.seq }"/>"> --%>
						<div class="pwdModify">
							<input class="form-control" type="password" placeholder="새 비밀번호" aria-label="default input example"  name="pwd" value="<c:out value="${item.pwd }"/>">
							<p>  영문,숫자,특수문자 8~12자로 입력해주세요</p>
						</div>
						<!-- 새 비밀번호 확인 -->
						<div class="pwdModify">
							<input class="form-control" type="password" placeholder="새 비밀번호 확인" aria-label="default input example" id="pwd2">						
							<div class="invalid-feedback" id="pwdFeedback"></div>
							<p>  영문,숫자,특수문자 8~12자로 입력해주세요</p>
						</div>
						<!-- 비밀번호 입력 밑에 설명 -->
						<div class="pwdAnswer">
							<p>
								<i class="fa-solid fa-circle-exclamation"></i>
								비밀번호는 8~12자 이내로 영문(대,소문자),숫자,특수문자 3가지 조합 중 2가지 이상을 조합하셔서 만드시면 됩니다.
							</p>
						</div>
						<!-- 취소,변경 버튼 -->
						<div class="container-flid finalBtn">
							<div class="row">
								<div class="col-6">
									<button type="button" class="btn btn-outline-danger" id="btnMemberView">취소</button>
								</div>
								<div class="col">
									<button type="button" class="btn btn-outline-secondary" id="btnPwdRegister">변경</button>
								</div>
								<!-- Modal -->
								<!-- <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="staticBackdropLabel">비밀번호 변경</h5>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								        비밀번호 변경하시겠습니까?
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
								        <button type="button" class="btn btn-danger" onclick="location.href='memberViewForm.html'">변경</button>
								      </div>
								    </div>
								  </div>
								</div> -->
							
							</div>
						</div>
						
					</div>
				</div>
				</form>
				
				
				
			</div>
		</div>
	</div>

	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	
	
	
</div> <!-- wrap end -->
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>	
	var goUrlInformationMod = "/member/informationMod";
	var goUrlPwdMod = "/member/pwdMod";
	var goUrlIndex = "/main/index";
	var goUrlPwdModRegister ="/member/pwdUpdt";
	var goUrlMemberView = "/member/memberViewForm";
	
	var seq = $("input:hidden[name=sessSeq]");
	var form = $("form[name=mform]");
	
	/* $("#btnInformationMod").on("click",function(){
		$(location).attr("href",goUrlInformationMod);
	}); */

	$("#btnPwdMod").on("click",function(){
		$(location).attr("href",goUrlPwdMod);
	});
	
	$(".btnIndex").on("click",function(){
		$(location).attr("href",goUrlIndex);
	});
	
	$("#btnPwdRegister").on("click",function(){
		form.attr("action",goUrlPwdModRegister).submit();
	});
	
	$("#btnMemberView").on("click",function(){
		$(location).attr("href",goUrlMemberView);
	});
	
	$("#pwd2").on("keyup",function(key){
		var p1 = document.getElementById('pwd').value;
		var p2 = document.getElementById('pwd2').value;
		if(p1 == p2){
			document.getElementById("pwd2").classList.remove('is-invalid');						
			document.getElementById("pwd2").classList.add('is-valid');

			document.getElementById("pwdFeedback").classList.remove('invalid-feedback');
			document.getElementById("pwdFeedback").classList.add('valid-feedback');
			document.getElementById("pwdFeedback").innerText = "일치합니다.";
			return false;
		}else{
			document.getElementById("pwd2").classList.add('is-invalid');
			document.getElementById("pwd2").classList.remove('is-valid');
			
			document.getElementById("pwdFeedback").classList.remove('valid-feedback');
			document.getElementById("pwdFeedback").classList.add('invalid-feedback');
			document.getElementById("pwdFeedback").innerText = "일치 하지 않습니다.";
			
			return true;
		}
	});
	
	goInformation = function(seqValue){
		seq.val(seqValue);
		form.attr("action" ,goUrlInformationMod).submit();
	};
	
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>