<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>비밀번호 찾기</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/findIdForm_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="searchWrap">
	<!-- 비밀번호 찾기 헤더 -->
	<div class="popHeaderWrap">
		<h1 class="popTitle">
			<span>비밀번호 찾기</span>
		</h1>
	</div>
	<!-- 콘텐츠 시작 -->
	<div class="contentsWrap">
		<!-- 아이디 비번 탭 -->
		<div class="container-fluid">
			<div class="row">
				<div class="col-6">				
					<button type="button" class="btn btn-secondary" id="btnIdFind">아이디 찾기</button>
				</div>	
				<div class="col">	
					<button type="button" class="btn btn-danger" id="btnPwdFind">비밀번호 찾기</button>
				</div>
			</div>
		</div>
		<!-- 비밀번호 찾기 영역 -->
		<div class="idsearchWrap">
			<!-- 알림 -->
			<div class="notiArea">
				<span>비밀번호를 찾을 방법을 선택해주세요.</span>
			</div>
			<div class="searchType">
				<span>등록된 휴대폰번호로 찾기</span>
				<input class="form-control" type="text" placeholder="아이디" aria-label="default input example" id="id" name="id" value="<c:out value="${dto.id }" />">
				<input class="form-control" type="text" placeholder="이름" aria-label="default input example" id="name" name="name" value="<c:out value="${dto.name }" />">
				<input class="form-control" type="text" placeholder="휴대폰번호" oninput="autoHyphen(this)" maxlength="13" aria-label="default input example" id="number" name="number" value="<c:out value="${dto.number }" />">
			</div>
			<button type="button" class="btn btn-danger" id="btnFindPwd">확인</button>
		</div>
	</div><!-- contentesWrap end -->
</div><!-- searchWrap end -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>	
	
	var goUrlIdFind = "/member/findId";
	var goUrlPwdFind = "/member/findPwd";
	var goUrlFindPwdResult = "/member/findPwdResult"
	
	/* 비밀번호 찾기 */ 
	$("#btnFindPwd").on("click", function(){
		/* if(validation() == false) return false; */
		
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			/* ,dataType:"json" */
			,url: "/member/findPwdProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "name" : $("#name").val(), "number" : $("#number").val(), /* "autoLogin" : $("#autoLogin").is(":checked") */}
			,success: function(response) {
				if(response.rt == "success") {
					/* if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_INDEX_ADMIN;
					} */
					
					location.href = goUrlFindPwdResult;
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
	});
	
	$("#btnIdFind").on("click",function(){
		$(location).attr("href",goUrlIdFind);
	});
	
	$("#btnPwdFind").on("click",function(){
		$(location).attr("href",goUrlPwdFind);
	});
	
	//전화번호 하이픈
	const autoHyphen = (target) => {
	target.value = target.value
	.replace(/[^0-9]/g, '')
	.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
    }
	
	
</script>

</body>
</html>