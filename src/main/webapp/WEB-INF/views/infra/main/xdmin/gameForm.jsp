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

    <title>게임 폼</title>

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
	
	<!-- datepicker -->
 	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
  	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  	<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
  	<script>
 	 $( function() {
   	 $( "#datepicker" ).datepicker();
 	 } );
 	 </script>
 

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
			<form action="/main/gameInst" id="gameFormReg" name="gameFormReg">
				<!-- 제목 -->
				<h3>경기관리</h3>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							홈팀
						</div>
						<div class="col-6">
							원정팀 
						</div>					
					</div>
				</div>
			 	<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<select class="form-select" aria-label="Default select example" id="whoHome" name="whoHome">
								<option value="">홈팀선택</option>
								<c:forEach items="${view}" varStatus="status" var="view">
									<option value="<c:out value="${view.teamName }" />"><c:out value="${view.teamName }" /></option>
								</c:forEach>
							</select>
						</div>
						<div class="col-6">
							<select class="form-select" aria-label="Default select example" id="whoAway" name="whoAway">
								<option>원정팀선택</option>
								<c:forEach items="${view }" var="view" varStatus="status">
									<option value="<c:out value="${view.teamName }" />"><c:out value="${view.teamName }" /></option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>	
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							경기날짜
						</div>
						<div class="col">
							경기시작시간
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" type="text"  aria-label="default input example" placeholder="경기날짜" id="datepicker" name="dob" value="<c:out value="${dto.dob }" />">
						</div>
						<div class="col">
							<input class="form-control" type="text" aria-label="default input example" id="time	" name="time" value="<c:out value="${dto.time }"/>">
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							경기장
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" type="text" aria-label="default input example" id="ground" name="ground" value="<c:out value="${dto.ground }"/>">
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
							<span type="button" class="btn btn-primary" onclick="gameRegister();">
								<i class="fa-solid fa-plus"></i>
							</span>
						</div>
					</div>
				</div>
				
				
				
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js" />

    <!-- Bootstrap core JavaScript-->
    <script src="/resources/vendor/jquery/jquery.min.js"></script>
    <script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="/resources/js/sb-admin-2.min.js"></script>
	

	<!-- fontawsome -->
	<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>

	<!-- js address -->
	<script type="text/javascript" src="/resources/js/game/game.js"></script>
	
</body>

</html>