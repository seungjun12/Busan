<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>회원가입</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/registerForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Karla:wght@300&display=swap" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<div id="wrap">
	<form method="post" action="memberRegister" id="registerForm" name="registerForm">
		<div id="top">
			<h3 id="topLogo" onclick="location.href='../main/indexForm.html'" style="cursor: pointer;">INTERPARK</h3> 
		</div>
		<hr style="margin-bottom: 0px;">
		<h5>정보입력</h5>
		<div id="register-wrap">
			<!-- 아이디 입력 -->
			<div id="id">
				<b>아이디</b>
				<input
				 class="form-control" 
				 type="text" placeholder="6~20자 영문,숫자" 
				 aria-label="default input example" 
				 id="id" name="id" value="<c:out value="${dto.id }"/>"
				 >
				 <div class="invalid-feedback" id="ifmmIdFeedback"></div>
			</div>
			<hr>
			<!-- 비밀번호 입력 -->
			<div>
				<b>비밀번호</b>
				<input class="form-control" type="password" placeholder="8~12자 영문,숫자,특수문자" aria-label="default input example" id="pwd" name="pwd" value="<c:out value="${dto.pwd }"/>">
			</div>
			<hr>
			<!-- 비밀번호 확인 입력 -->
			<div>
				<b>비밀번호확인</b>
				<input class="form-control" type="password" placeholder="8~12자 영문,숫자,특수문자" aria-label="default input example">
			</div>
			<hr>
			<!-- 개인정보 유효기간 버튼 -->
			<b>개인정보 유효기간</b>
			<div class="checkbox" style="margin-left: 170px;">	
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="personalAgree" id="personalAgree1" value="8">
					<label class="form-check-label" for="inlineRadio1">탈퇴 시까지</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="personalAgree" id="personalAgree2" value="9">
  					<label class="form-check-label" for="inlineRadio2">1년</label>
				</div>
			</div>
			<div id="personalPeriod">
				개인정보 유효기간 경과 이후 파기 또는 분리저장,관리합니다.
			</div>
			<hr>
			<!-- 이름 입력 -->
			<div>
				<b>이름</b>
			</div>
			<div>
				<input class="form-control" type="text" aria-label="default input example" placeholder="홍길동" id="name" name="name" value="<c:out value="${dto.name }"/>">
			</div>
			<hr>
			<!-- 성별 체크 버튼 -->
			<b>성별</b>
			<div class="checkbox-gender">	
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="gender" id="gender1" value="6">
					<label class="form-check-label" for="inlineRadio1">남</label>
				</div>
				<div class="form-check form-check-inline">
  					<input class="form-check-input" type="radio" name="gender" id="gender2" value="7">
  					<label class="form-check-label" for="inlineRadio2">여</label>
				</div>
			</div>
			<hr>
			<!-- 이메일 입력 -->
			<b>이메일</b>
			<input class="form-control" type="text" aria-label="default input example" style="width: 250px; display: inline-block;" placeholder="이메일">@
			<div class="btn-group">
  				<button type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false" style="margin-left: 40px;">
    				선택
  				</button>
  				<ul class="dropdown-menu">
    				<li><a class="dropdown-item" href="#">naver.com</a></li>
    				<li><a class="dropdown-item" href="#">gmail.com</a></li>
    				<li><a class="dropdown-item" href="#">daum.com</a></li>
    				<li><a class="dropdown-item" href="#">nate.com</a></li>
  				</ul>
			</div>
			<hr>
			<!-- 번호 입력 -->
			<div>
				<b>휴대폰</b>
				<input class="form-control" type="text" placeholder="010 1234 5678" aria-label="default input example" id="inputPhone">			
				<button type="button" class="btn btn-light">인증번호받기</button>
			</div>
			<hr>
			<!-- 생년월일 -->
			<div>
				<b>생년월일</b>
				<input class="form-control" type="text" aria-label="default input example" placeholder="ex)1999-99-99" id="dob" name="dob" value="<c:out value="${dto.dob }"/>">
			</div>
			<hr>
			<!-- 주소등록 -->
			<div>
			<input type="text" id="sample4_postcode" placeholder="우편번호"  name="addressCode" value="<c:out value="${dto.addressCode}"/>">
			<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
			<button type="button" id="btnAddressClear" class="btn-close" aria-label="Close"></button>
			<input type="text" id="sample4_roadAddress" placeholder="도로명주소"  name="address" value="<c:out value="${dto.address }"/>" style="width: 400px;">
			<input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="width: 400px;">
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="sample4_detailAddress" placeholder="상세주소"  name="address2"  value="<c:out value="${dto.address2 }"/>" style="width: 400px;">
			</div>
			
			</form>
			<div id="agreep">
				<p>만 14세 미만 회원은 법정대리인(부모님) 동의를 받은 경우만 회원가입이 가능합니다.</p>
			</div>
			<div style="margin-top: 60px;">
				<!-- 회원가입 버튼 -->
				<span type="button" class="btn btn-secondary btn-lg" style="width: 100%" onclick="register();">가입완료</span>
				
				
				<!-- 회원가입 Modal -->
				<!-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  					<div class="modal-dialog">
    					<div class="modal-content">
      						<div class="modal-header">
        						<h5 class="modal-title" id="exampleModalLabel">회원가입 성공</h5>
       				 			<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      						</div>
      						<div class="modal-body">
       							 회원가입을 축하드립니다.
      						</div>
      						<div class="modal-footer">
        						<button type="button" class="btn btn-secondary" style="cursor: pointer;">닫기</button>
      						</div>
    					</div>
  					</div>
				</div>			 -->
			</div>
		</div><!-- register-wrap end -->	
			<!-- 푸터 -->
			<div id="registerFooter">
				<div id="footerCopyright">
					Copyright @ Interpark corp.ALL rights reserved.
				</div>
			</div>
					
		
			
		
		
		
		
		
	
</div><!-- wrap end -->	

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	$("#id").on("keyup", function(key){
		if(key.keyCode == 13){
		/* if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
			return false;
		} else { */
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("id").classList.remove('is-invalid');
						document.getElementById("id").classList.add('is-valid');
						
						document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 가능 합니다.";
						
						document.getElementById("ifmmIdAllowedNy").value = 1;
						
					} else {
						document.getElementById("id").classList.add('is-invalid');
						document.getElementById("id").classList.remove('is-valid');
						
						document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다";
						
						document.getElementById("ifmmIdAllowedNy").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		}/* } */
	});
	
    $("#btnAddressClear").on("click" , function(){
    	$("#sample4_roadAddress").val('');
    	$("#sample4_jibunAddress").val('');
    	$("#sample4_detailAddress").val('');
    	$("#sample4_extraAddress").val('');
    	$("#sample4_postcode").val('');
    })
</script>	
	<script type="text/javascript">
		function register(){
			
			document.getElementById('registerForm').submit();
			
			return false;
		}
	</script> 
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f841982946149edfa0ce998dfc98894&libraries=services,clusterer,drawing"></script>
	<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                 var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                } 
            }
        }).open();
    }
    
    
	</script>


</body>
</html>