<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>비밀번호 찾기 결과</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/findIdFormResult_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div id="searchWrap">
	<!-- 아이디 찾기 헤더 -->
	<div class="popHeaderWrap">
		<h1 class="popTitle">
			<span>비밀번호 찾기</span>
		</h1>
	</div>
	<!-- 콘텐츠 시작 -->
	<form id="form" name="form" method="post">
	<input type="hidden"  name="sessSeq" id="sessSeq" value="<c:out value="${sessSeq }"/>">
		<div class="contentsWrap">
			<!-- 아이디 비번 탭 -->
			<div class="container-fluid">
				<div class="row">
					<div class="col-6">				
						<button type="button" class="btn btn-secondary">아이디 찾기</button>
					</div>	
					<div class="col">	
						<button type="button" class="btn btn-danger">비밀번호 찾기</button>
					</div>
				</div>
			</div>
			<!-- 아이디 찾기 결과 -->
			<div class="findIdWrap">
				<div>
					<h3><b>비밀번호 변경</b></h3>
				</div>
				<div>
					<div class="form-check">
					<%-- sessSeq: <c:out value="${sessSeq }"/> --%>
	  					<div>새 비밀번호</div>
	  					<input class="form-control" placeholder="새 비밀번호" 
	  					type="password" aria-label="default input example"
	  					id="pwd" name="pwd" value="<c:out value="${item.pwd }" />">
	  					<div id="pwdFeedback2"></div>
	  					<div>새 비밀번호확인</div>
	  					<input class="form-control" placeholder="새 비밀번호 확인" 
	  					type="password" aria-label="default input example" 
	  					id="pwd2" readonly>
	  					<div id="pwdFeedback"></div>
					</div>
				</div>
				<button type="button" class="btn btn-danger" id="btnPwdMod" style="margin-top: 30px;">비밀번호 변경</button>
			</div>
		</div><!-- contentesWrap end -->
	</form>
</div><!-- searchWrap end -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	
	<script>
	
	
	
	
	//비밀번호 조건 확인
		$("#pwd").on("focusout",function(key){
			var regExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
			var p1 = $("#pwd").val();
			
			if(p1.match(regExp) == null){
				document.getElementById("pwd").classList.add('is-invalid');
				document.getElementById("pwd").classList.remove('is-valid');
				
				document.getElementById("pwdFeedback2").innerText = "비밀번호 조건에 맞지 않습니다.";
				document.getElementById("pwdFeedback2").classList.remove('valid-feedback');
				document.getElementById("pwdFeedback2").classList.add('invalid-feedback');
				$("#pwd2").attr('readonly',true);
			}else{
				document.getElementById("pwd").classList.remove('is-invalid');
				document.getElementById("pwd").classList.add('is-valid');
				$("#pwd2").attr('readonly',false);
			}
			
		})
		
		//비밀번호 비밀번호 확인 둘이 같은지 체크
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
	
		var goUrlPwdMod = "/member/findPwdModify";
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=sessSeq]");
		
		//새비밀번호 변경
		
		$("#btnPwdMod").on("click",function(){
			form.attr("action",goUrlPwdMod).submit();
		});
	
	</script> 
</body>
</html>