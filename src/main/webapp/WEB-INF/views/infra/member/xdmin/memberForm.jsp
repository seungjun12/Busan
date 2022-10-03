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

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
	

	<!-- fontawsome -->
	<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>

	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7f841982946149edfa0ce998dfc98894&libraries=services,clusterer,drawing"></script>

	<!-- js address -->
	<script type="text/javascript" src="/resources/js/member/member.js"></script>
	
</body>

</html>