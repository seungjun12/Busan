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

    <title>맴버</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
<!-- start -->
    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="/resources/css/memberForm_style.css" rel="stylesheet">
	
	<!-- bootstrap link -->
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
			<form method="post"  id="form" name="form">
			<%-- <input type="hidden" name="mainKey">
				<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
				<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
				<input type="hidden" name="checkboxSeqArray" --%>
				 <!-- *Vo.jsp s -->
				 <%@include file="memberVo.jsp"%>		
				 <!-- *Vo.jsp e -->	
				<!-- 제목 -->
				<h3>회원관리</h3>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							이름
						</div>
						<div class="col">
							
						</div>					
					</div>
				</div>
			 	<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" type="text" aria-label="default input example" id="name" name="name" value="<c:out value="${item.name }"/>">
						</div>
						<div class="col">
							<input class="form-control" type="hidden" aria-label="default input example" id="seq" value="<c:out value="${item.seq }"/>">						
						</div>
					</div>
				</div>	
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							아이디
						</div>
						<!-- <div class="col">
							비밀번호
						</div> -->
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" type="text" 
							placeholder="ID" aria-label="defalut input example" 
							id="id" name="id" value="<c:out value="${item.id }"/>"
							>
							<div class="invalide-feeback" id="ifmmIdFeedback"></div>
						</div>
						<div class="col">
							<%-- <input class="form-control" type="password" placeholder="PWD" aria-label="default input example" id="pwd" name="pwd" value="<c:out value="${item.pwd }"/>"> --%>
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							이메일
						</div>
						<!-- <div class="col">
							휴대폰
						</div> -->
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input type="hidden" id="ifmmIdAllowedNy" name="ifmmIdAllowedNy" value="0">
							<input class="form-control" type="text" aria-label="default input example" id="email" name="email" value="<c:out value="${item.email }"/>">
							<div class="invalid-feedback"  id="emailFeedback"></div>
						</div>
						<%-- <div class="col">
							<input class="form-control" type="text"  aria-label="default input example" id="number" name="number" value="<c:out value="${dto.number }"/>">
						</div> --%>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							주소
						</div>
						<div class="col">
							상세주소
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<input class="form-control" type="text"  aria-label="default input example" id="address" name="address" value="<c:out value="${item.address }"/>">
						</div>
						<div class="col">
							<input class="form-control" type="text"  aria-label="default input example" id="address2" name="address2" value="<c:out value="${item.address2 }"/>">
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							우편번호
						</div>
						<div class="col">
							성별
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col">
							<input class="form-control" type="text"  aria-label="default input example" id="addressCode" name="addressCode" value="<c:out value="${item.addressCode }"/>">
						</div>
						<div class="col-6">
							<select class="form-select" aria-label="Default select example" id="gender" name="gender">
						  		<option value="6" <c:if test="${item.gender eq 6 }">selected</c:if>>남자</option>
							  	<option value="7" <c:if test="${item.gender eq 7 }">selected</c:if>>여자</option>
							</select>
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupName">
					<div class="row">
						<div class="col-6">
							삭제여부
						</div>
						<div class="col">
							개인정보유효기간
						</div>
					</div>
				</div>
				<div class="container-fluid codeGroupInput">
					<div class="row">
						<div class="col-6">
							<select class="form-select" aria-label="Default select example" id="delNy" name="delNy">
						  		<option value="1" <c:if test="${item.delNy eq 1 }">selected</c:if>>N</option>
							  	<option value="0" <c:if test="${item.delNy eq 0 }">selected</c:if>>Y</option>
							</select>
						</div>
						<div class="col">
							<select class="form-select" aria-label="Default select example" id="personalAgree" name="personalAgree">
						  		<option value="0" <c:if test="${item.personalAgree eq 0 }">selected</c:if>>탈퇴시까지</option>
							  	<option value="1" <c:if test="${item.personalAgree eq 1 }">selected</c:if>>1년</option>
							</select>
						</div>
					</div>
				</div>
				<div class="container-fluid lastBtn">
					<div class="row">
						<div class="col-6">
							<button type="button" class="btn btn-secondary" id="btnList" name="btnList">
								<i class="fa-solid fa-bars"></i>
							</button>
						</div>
						<div class="col" style="text-align: right;">
							<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleModal">
								<i class="fa-solid fa-x"></i>
							</button>
							<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ueleModal">
								<i class="fa-regular fa-trash-can"></i>
							</button>
							<button type="button" class="btn btn-primary" id="btnModify" name="btnModify">
								<i class="fa-solid fa-plus"></i>
							</button>
						</div>
					</div>
				</div>
				</form>
				<form name="formVo" id="formVo" method="post">
				<!-- *Vo.jsp s -->
				<%@include file="memberVo.jsp"%>		<!-- #-> -->
				<!-- *Vo.jsp e -->
				</form>
				
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
    
	<!-- uele Modal -->
	<div class="modal fade" id="ueleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">삭제</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        사용여부 삭제 하시겠습니까?
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-danger" id="btnUele" name="btnUele">삭제</button>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!--delete Modal -->
	<div class="modal fade" id="deleModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="staticBackdropLabel">삭제</h5>
	        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	      </div>
	      <div class="modal-body">
	        완전삭제 하시겠습니까?
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
	        <button type="button" class="btn btn-danger" id="btnDelete" name="btnDelete">삭제</button>
	      </div>
	    </div>
	  </div>
	</div>    
    
    <!--  btn jquery-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>      
	
	<!-- modal -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script> 	

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
	<script type="text/javascript" src="/resources/js/member/member.js"></script>
</body>

</html>