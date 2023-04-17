<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>로그인 화면</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/loginForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@600&display=swap" rel="stylesheet">
</head>
<body>
<div id="wrap">	
	<!-- 상단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/topvanner.jsp"%>
	<!-- 상단배너 e -->
	<!-- 중간배너 s-->
	<%@include file="../../../common/xdmin/includeV1/middlevanner.jsp"%>
	<!-- 중간배너 e -->
	<!-- 하단배너 s -->
	<%@include file="../../../common/xdmin/includeV1/bottomvanner.jsp"%>	
	<!-- 하단배너 e -->
	<!-- 로그인 영역 -->
	<div id="login">
		<!-- 아이디 비번 입력영역 -->
		<!-- 오른쪽 이미지 영역 -->
		<div id="loginImage">
			<img alt="" src="/resources/img/loginRightPhone.png">
			<img alt="" src="/resources/img/loginRightAdd.png" style="margin-top: 10px;">
		</div>
		<form method="post" id="loginForm" name="loginForm">
		<!-- 아이디 비번 입력영역 -->
		<div id="loginInput">
			<input class="form-control" type="text" aria-label="default input example" placeholder="아이디" id="id" name="id" value="cjftn">
			<input class="form-control" type="password" aria-label="default input example" placeholder="비밀번호" style="margin-top: 10px;" id="pwd" name="pwd" value="qkrtmdwns1!">
		<!-- 로그인 버튼 -->	
			<button type="button" class="btn btn-danger" style="width: 420px; margin-top: 15px;" id="btnLoginp">로그인</button>
			<!-- 자동로그인 아이디저장 체크버튼 -->
			<div id="loginCheck">	
				<div class="form-check form-check-inline">
	  				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
	 			 	<label class="form-check-label" for="inlineRadio1">자동로그인</label>
				</div>
				<div class="form-check form-check-inline">
	 	 			<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
	  				<label class="form-check-label" for="inlineRadio2">아이디저장</label>
				</div>			
			</div>
		</div>
		<!-- 네이버 카카오 로그인 영역 -->
		<div id="snsLogin">
			<button type="button" class="btn btn-outline-success" style="width: 420px;" id="naverLogin">네이버 로그인</button>
			<button type="button" class="btn btn-outline-warning" style="width: 420px; margin-top: 10px;" id="kakaoBtn">카카오 로그인</button>
			<button type="button" class="btn btn-outline-primary" style="width: 420px; margin-top: 10px;" onclick="btnNo();">페이스북 로그인</button>
			<button type="button" class="btn btn-outline-dark" style="width: 420px; margin-top: 10px;" onclick="btnNo();">구글 로그인</button>
			<div id="naverIdLogin"></div>
		</div>
		</form>
		<form name="form">
			<input type="hidden" name="name"/>
			<input type="hidden" name="id"/>
			<!-- <input type="hidden" name="phone"/> -->
			<input type="hidden" name="email"/>
			<input type="hidden" name="gender"/>
			<input type="hidden" name="dob"/>
			<!-- <input type="hidden" name="snsImg"/> -->
			<input type="hidden" name="token"/>
		</form>
		<!-- 로그인 밑에 설명영역 -->
		<div id="loginAnswer">
			개인정보 보호를 위해 공용 PC에서 사용 후 SNSN 계정의 로그아웃 상태를 반드시 확인해주세요.
			<hr>
		</div>
		<!-- 아이디 비번 찾기,회원가입 영역 -->
		<div id="loginBottom">
			<a type="button" onclick="popupId()"  style="cursor: pointer;">아이디 찾기</a>
			<a type="button" style="margin-left: 10px; cursor: pointer;" onclick="popupPwd()">비밀번호 찾기</a>
			<a type="button" style="margin-left: 10px;" class="btnRegister">회원가입</a>
		</div>
		<div id="loginBottomImage">
			<img alt="" src="/resources/img/loginBottomImg.png">
		</div>
	</div><!-- login end -->
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	
	
	
</div> <!-- wrap end -->

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>	
	
	/* var goUrlIndexView = "/main/indexView"; */
	var goUrlIdFind = "/member/findId"
	var goUrlRegister = "/member/register"
	
	$("#btnIdFind").on("click",function(){
		$(location).attr("href",goUrlIdFind);
	});
	
	$(".btnRegister").on("click",function(){
		$(location).attr("href",goUrlRegister);
	});
	
	/* 로그인 */ 
	$("#btnLoginp").on("click", function(){
		/* if(validation() == false) return false; */
		/* if(key.keyCode == 13){ */
		$.ajax({
			async: true //false일경우 동기 요청으로 변경
			,cache: false
			,type: "post" 
			/* ,dataType:"json" */
			,url: "/member/loginProc"
			/* ,data : $("#formLogin").serialize() */
			,data : { "id" : $("#id").val(), "pwd" : $("#pwd").val(), /* "autoLogin" : $("#autoLogin").is(":checked") */}
			,success: function(response) {
				if(response.rt == "success") {
					/* if(response.changePwd == "true") {
						location.href = URL_CHANGE_PWD_FORM;
					} else {
						location.href = URL_INDEX_ADMIN;
					} */
					
					location.href = "/admin/home";
				} else {
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		});
		/* } */
	});
	
		
	function btnNo(){
		alert("준비중입니다.")
	};
	
	
</script>
<!-- 카카오  -->	
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<!-- 네이버 -->
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<script langauge="javascript">
	function popupId(){
		var url="/member/findId";
		var option="width=544, height=772, top=10"
		window.open(url,"",option);
		
	}
	
	function popupPwd(){
		var url="/member/findPwd";
		var option="width=544, height=772, top=10"
		window.open(url,"",option);
		
	}
	
	Kakao.init('7f841982946149edfa0ce998dfc98894'); //kakao developers -> 내 애플리케이션 ->JavaScript 키 복붙
	console.log(Kakao.isInitialized());
	
	$("#kakaoBtn").on("click", function() {
		/* Kakao.Auth.authorize({
		      redirectUri: 'http://localhost:8080/member/kakaoCallback',
		    }); */
		    /* alert("diq"); */
		Kakao.Auth.login({
 		      success: function (response) {
 		        Kakao.API.request({
 		          url: '/v2/user/me',
 		          success: function (response) {
 		        	  
 		        	  var accessToken = Kakao.Auth.getAccessToken();
 		        	  Kakao.Auth.setAccessToken(accessToken);

 		        	  var account = response.kakao_account;
 		        	  
 		        	  console.log(response)
 		        	  console.log("email : " + account.email);
 		        	  console.log("name : " + account.name);
// 		        	  console.log("nickname : " + account.profile.nickname);
// 		        	  console.log("picture : " + account.profile.thumbnail_image_url);
 		        	  console.log("picture : " + account.gender);
 		        	  console.log("picture : " + account.birthday);
 		        	  console.log("picture : " + account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
	        	  
	  	        	  $("input[name=id]").val("카카오로그인");
	  	        	 /*  $("input[name=name]").val(account.profile.nickname); */
//	  	        	  $("input[name=phone]").val(account.profile.phone_number);
	  	        	  $("input[name=email]").val(account.email);
	  	        	  $("input[name=dob]").val(account.birthday.substring(0,2) + "-" + account.birthday.substring(2,account.birthday.length));
//	  	        	  $("input[name=snsImg]").val(account.profile.thumbnail_image_url);
	  	        	  $("input[name=token]").val(accessToken);
	  	        	  
	  	        	  if (account.gender === "male") {
	  	        		  $("input[name=gender]").val(6);
	          		  } else {
	          			  $("input[name=gender]").val(7);
       			  } 
	  	        	  
	  	        	 /*  $("form[name=form]").attr("action", "/member/kakaoLoginProc").submit(); */
					 /* "phone": $("input[name=phone]").val(), */ 
	  	        	 /* "snsImg": $("input[name=snsImg]").val(), */ 
					 $.ajax({
						async: true
						,cache: false
						,type:"POST"
						,url: "/member/kakaoLoginProc"
						,data: {/* "name": $("input[name=name]").val() */
							/* , */ "id": $("input[name=id]").val()
							,"email": $("input[name=email]").val()
							, "gender": $("input[name=gender]").val()
							, "dob": $("input[name=dob]").val()
							, "token": $("input[name=token]").val()}
						,success : function(response) {
							if (response.rt == "fail") {
								alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
								return false;
							} else {
								window.location.href = "/main/index";
							}
						},
						error : function(jqXHR, status, error) {
							alert("알 수 없는 에러 [ " + error + " ]");
						}
					});
 		          },
 		          fail: function (error) {
 		            console.log(error)
 		          },
 		        })
 		      },
 		      fail: function (error) {
 		        console.log(error)
 		      },
 		    })
		});
	
	
		/* 네이버 로그인 */
	 
		var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "eqto6ibuhYa8QviG0m5L",
				callbackUrl: "http://localhost:8080/member/login",
				isPopup: false,
				callbackHandle: true
				//loginButton: {color: "green", type: 3, height: 70} 
			}
		);

    //	naverLogin.init();
    	
   		/* window.addEventListener('load', function () {
   			naverLogin.getLoginStatus(function (status) {
   				if (status) {
   		//			(6) 로그인 상태가 "true" 인 경우 로그인 버튼을 없애고 사용자 정보를 출력합니다. 
   					setLoginStatus();
   				}
   			});
   		}); */
 
   		$("#naverLogin").on("click", function() {
			naverLogin.init(); //초기화
			
			naverLogin.getLoginStatus(function (status) {
				
				if(!status)
					naverLogin.authorize();
                else
                    setLoginStatus();  //하늘님 메소드 실행 -> Ajax
			});
   		});
   			
   		function setLoginStatus() {	
   			
			if (naverLogin.user.gender == 'M'){
				$("input[name=gender]").val(6);
			} else {
				$("input[name=gender]").val(7);
			} 
			
			//alert(naverLogin.user.name);
			
			$.ajax({
				async: true
				,cache: false
				,type:"POST"
				,url: "/member/naverLoginProc"
				,data: {"name": naverLogin.user.name
					, "id": naverLogin.user.id
					/* , "phone": naverLogin.user.mobile */
					, "email": naverLogin.user.email
					, "gender": $("input[name=gender]").val()
					, "dob": naverLogin.user.birthyear+"-"+naverLogin.user.birthday
					/* , "snsImg": naverLogin.user.profile_image */
					/* , "sns_id": */ }
				,success : function(response) {
					if (response.rt == "fail") {
						alert("아이디와 비밀번호를 다시 확인 후 시도해 주세요.");
						return false;
					} else {
						window.location.href = "/main/index";
					}
				},
				error : function(jqXHR, status, error) {
					alert("알 수 없는 에러 [ " + error + " ]");
				}
			});
		}
</script>
</body>
</html>