<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>맴버 폼</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="/resources/css/memberForm_style.css" rel="stylesheet">
	
	<!-- bootstrap --> 
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper" class="container-fluid">

		<!-- 사이드배너 s -->
		<%@include file="../../../common/xdmin/includeV1/adminSideBar.jsp"%>
		<!-- 사이드배너 e -->        

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

            <!-- 탑바 s -->
			<%@include file="../../../common/xdmin/includeV1/adminTopBar.jsp"%>
			<!-- 탑바 e -->
			<!-- 코드 그룹 관리 제목 -->
			<div class="wrap">
			<form action="memberInst" id="memberFormReg" name="memberFormReg">
				<!-- 제목 -->
				<h3>회원관리</h3>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							이름
						</div>					
					</div>
				</div>
			 	<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" type="text" aria-label="default input example" id="name" name="name" value="<c:out value="${dto.name }"/>">
						</div>
					</div>
				</div>	
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							아이디
						</div>
						<div class="col">
							비밀번호
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" 
							type="text" placeholder="ID" 
							aria-label="default input example" 
							 id="id" name="id" value="<c:out value="${dto.id }"/>"
							 >
							 <div class="invalide-feeback" id="ifmmIdFeedback"></div>
						</div>
						<div class="col">
							<input class="form-control" type="password" placeholder="PWD" aria-label="default input example" id="pwd" name="pwd" value="<c:out value="${dto.pwd }"/>">
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							이메일
						</div>
						<div class="col">
							휴대폰
						</div> 
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" type="text" aria-label="default input example" id="email" name="email" value="<c:out value="${dto.email }"/>">
						</div>
						<div class="col">
							<input class="form-control" type="text"  aria-label="default input example" id="number" name="number" value="<c:out value="${dto.number }"/>">
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							성별
						</div>
						<div class="col">
							삭제여부
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<select class="form-select" aria-label="Default select example" id="gender" name="gender">
						  		<option value="6">남자</option>
							  	<option value="7">여자</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select" aria-label="Default select example" id="delNy" name="delNy">
						  		<option value="1">N</option>
							  	<option value="0">Y</option>
							</select>
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							주소
						</div>
						<div class="col">
							개인정보유효기간
						</div>
					</div>
				</div>
				<!-- 우편번호,개인정보 동의선택함 -->
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							<input type="text" id="sample4_postcode" placeholder="우편번호"  name="addressCode" value="<c:out value="${dto.addressCode}"/>">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
							<button type="button" id="btnAddressClear" class="btn-close" aria-label="Close"></button>		
						</div>
						<div class="col">
							<select class="form-select" aria-label="Default select example" id="personalAgree" name="personalAgree">
						  		<option value="8">탈퇴시까지</option>
							  	<option value="9">1년</option>
							</select>
						</div>
					</div>
				</div>
				<!-- 도로명주소 -->
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							<input type="text" id="sample4_roadAddress" placeholder="도로명주소"  name="address" value="<c:out value="${dto.address }"/>" style="width: 400px;">
						</div>
					</div>
				</div>
				<!-- 지번주소 -->
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							<input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="width: 400px;">
						</div>
					</div>	
				</div>
				<!-- 상세주소 -->
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							<span id="guide" style="color:#999;display:none"></span>
							<input type="text" id="sample4_detailAddress" placeholder="상세주소"  name="address2"  value="<c:out value="${dto.address2 }"/>" style="width: 400px;">
						</div>
					</div>
				</div>
				<!-- 주소 참고항목 -->
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							<input type="text" id="sample4_extraAddress" placeholder="참고항목" style="width: 400px;" >
						</div>
					</div>
				</div>
				<!-- 위도 경도 -->
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-3">
							<input type="text" id="ifmaLatArray0" placeholder="위도">
						</div>
						<div class="col-3">
							<input type="text" id="ifmaLngArray0"  placeholder="경도">
						</div>
					</div>
				</div>
				</form>								
				<div class="container-fluid lastBtn">
					<div class="row">
						<div class="col-6">
							<a href="memberList">	
								<button type="button" class="btn btn-secondary">
									<i class="fa-solid fa-bars"></i>
								</button>
							</a>
						</div>
						<div class="col" style="text-align: right;">
							<a>	
								<button type="button" class="btn btn-danger">
									<i class="fa-solid fa-x"></i>
								</button>
							</a>
							<a>	
								<button type="button" class="btn btn-danger">
									<i class="fa-regular fa-trash-can"></i>
								</button>
							</a>
							<span type="button" class="btn btn-primary" onclick="test();">
								<i class="fa-solid fa-plus"></i>
							</span>
						</div>
					</div>
				</div>
				<button id="buttonTest">test</button>
				
				
			</div><!-- wrap end -->
			


            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">정말 로그아웃 하시겠습니까?</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <a class="btn btn-primary" href="login.html">로그아웃</a>
                </div>
            </div>
        </div>
    </div>
    
    <!-- jquery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <!-- 주소록 삭제 스크립트 -->
    <script>
    $("#btnAddressClear").on("click" , function(){
    	$("#sample4_roadAddress").val('');
    	$("#sample4_jibunAddress").val('');
    	$("#sample4_detailAddress").val('');
    	$("#sample4_extraAddress").val('');
    	$("#sample4_postcode").val('');
    	$("#ifmaLatArray0").val('');
    	$("#ifmaLngArray0").val('');
    })
    
	$("#id").on("keyup", function(key){
		
/* 		if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
			return false;
		} else { */
		if(key.keyCode == 13){	
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
	
    
    /* 페이지 이동 버튼 */
    
    var goUrlCode = "/code/codeList";
	var goUrlMember = "/member/memberList";
	var goUrlCodeGroup = "/codeGroup/codeGroupList";
	
	$("#btnCodeGroup").on("click",function(){
		$(location).attr("href",goUrlCodeGroup);
	});
	
	$("#btnCode").on("click",function(){
		$(location).attr("href",goUrlCode);
	});
	
	$("#btnMember").on("click",function(){
		$(location).attr("href",goUrlMember);
	});
	
    </script>
  

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
	

	<!-- fontawsome -->
	<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
	
	<script type="text/javascript">
		function test() {
/* 			if(document.getElementById('name').value == '' || document.getElementById('name').value == null){
				alert("이름 입력해")
				document.getElementById('name').value="";
				document.getElementById('name').focus();
				return false;
			}
			
			if(document.getElementById('id').value == '' || document.getElementById('id').value == null){
				alert("아이디 입력해")
				document.getElementById('id').value="";
				document.getElementById('id').focus();
				return false;
			}
			
			if(document.getElementById('pwd').value == '' || document.getElementById('pwd').value == null){
				alert("비밀번호 입력해")
				document.getElementById('pwd').value="";
				document.getElementById('pwd').focus();
				return false;
			}
			
			if(document.getElementById('email').value == '' || document.getElementById('email').value == null){
				alert("이메일 입력해")
				document.getElementById('email').value="";
				document.getElementById('email').focus();
				return false;
			}
			
			
			if(document.getElementById('address2').value == '' || document.getElementById('address2').value == null){
				alert("상세주소 입력해")
				document.getElementById('address2').value="";
				document.getElementById('address2').focus();
				return false;
			}
			
			if(document.getElementById('addressCode').value == '' || document.getElementById('addressCode').value == null){
				alert("집코드 입력해")
				document.getElementById('addressCode').value="";
				document.getElementById('addressCode').focus();
				return false;
			} */
			
			document.getElementById('memberFormReg').submit();
			
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
				/*  lat and lng from address s */ 
 				
				// 주소-좌표 변환 객체를 생성
				var geocoder = new daum.maps.services.Geocoder();
				
				// 주소로 좌표를 검색
				geocoder.addressSearch(roadAddr, function(result, status) {
				 
					// 정상적으로 검색이 완료됐으면,
					if (status == daum.maps.services.Status.OK) {
						
						document.getElementById("ifmaLatArray0").value=result[0].y;
						document.getElementById("ifmaLngArray0").value=result[0].x;
					}
				});
				/* lat and lng from address e*/ 
            }
        }).open();
    }
    
    
	</script>
	
	
</body>

</html>