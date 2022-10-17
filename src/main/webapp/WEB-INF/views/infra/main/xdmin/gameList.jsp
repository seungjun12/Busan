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

    <title>경기 리스트</title>

    <!-- Custom fonts for this template-->
    <link href="/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="/resources/css/sb-admin-2.min.css" rel="stylesheet">
	<link href="/resources/css/codeList_style.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

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
				<!-- 제목 -->
				<h3>경기관리</h3>
				<!-- 검색대 -->
				<form method="post" name="form" id="form">
					<input type="hidden" name="gameseq" value="<c:out  value="${dto.gameseq }"/>">
					<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
					<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow }"/>">
					<input type="hidden" name="checkboxSeqArray">
				<div class="searchWrap">
					<div class="searchFirst">
						<select class="form-select form-select-sm selectSize" aria-label=".form-select-sm example" id="shdelNy" name="shdelNy">
						  <option value="" selected <c:if test="${empty vo.shdelNy}">selected</c:if>>삭제여부</option>
						  <option value="1" <c:if test="${vo.shdelNy eq 1}">selected</c:if>>N</option>
						  <option value="0" <c:if test="${vo.shdelNy eq 0}">selected</c:if>>Y</option>
						</select>
						<select class="form-select form-select-sm selectSize" aria-label=".form-select-sm example">
						  <option selected>수정일</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
						<select class="form-select form-select-sm selectSize" aria-label=".form-select-sm example">
						  <option selected>시작일</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>
						<select class="form-select form-select-sm selectSize" aria-label=".form-select-sm example">
						  <option selected>종료일</option>
						  <option value="1">One</option>
						  <option value="2">Two</option>
						  <option value="3">Three</option>
						</select>						
					</div>
					<div class="searchSecond"><!-- 여기부터 ㄱㄱ -->
						<select class="form-select form-select-sm selectSize" aria-label=".form-select-sm example" id="shOption" name="shOption">
						  <option value="" selected <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
						  <option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>순서</option>
						  <option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드이름</option>
						</select>
						<input class="form-control form-control-sm" type="text" placeholder="검색" aria-label=".form-control-sm example" id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>">
						<button type="button" id="btnSearch" style="width: 42px; height: 30px;" class="btn btn-primary">	
							<i class="fa fa-search" aria-hidden="true" style="cursor: pointer;"></i>&nbsp;&nbsp;&nbsp;
						</button>	
						<button type="button" id="btnReset" class="btn btn-warning">	
							<i class="fa fa-reply" aria-hidden="true" style="cursor: pointer;"></i>
						</button>
					</div>
				</div>
				</form>
				<!-- 리스트 영역 -->
				<div style="color: black">
					<span>total:<c:out value="${vo.totalRows}"/></span>
				</div>
				<div class="listWrap">
					<table class="table">
				  		<thead style="background-color: black">
					    	<td class="td1"><input class="test" type="checkbox" value="allmemberchecked" onclick="selectall(this);" name="allmembercheck"></td><!-- 1 -->
					    	<td>#</td><!-- 2 -->
					    	<td>홈팀</td><!-- 3 -->
					    	<td class="td4">원정팀</td><!-- 4 -->
					    	<td>경기날짜</td><!-- 5 -->
					    	<td>경기장</td><!-- 6 -->
					    	<td class="td7">시간</td><!-- 7 -->
					  	</thead>
					  	<tbody>
					  	<c:choose>
					  		<c:when test="${fn:length(list) eq 0}">
					  			<tr>
					  				<td class="text-center" colspan="7">There is no data!</td>
					  			</tr>
					  		</c:when>
					  		<c:otherwise>
					  		<c:forEach items="${list}" var="list" varStatus="status">
							<tr href="javascript:goView(<c:out value="${list.gameseq }"/>)">     	
						    	<td><input class="test" type="checkbox" value="memberchecked" name="membercheck"></td><!-- 1 -->
						    	<td><c:out value="${list.gameseq }"/></td><!-- 2 -->
						    	<td><c:out value="${list.whoHome }"/></td><!-- 3 -->
						    	<td><c:out value="${list.whoAway }"/></td><!-- 4 -->
						    	<td><c:out value="${list.dob }"/></td><!-- 5 -->
						    	<td><c:out value="${list.ground }"/></td><!-- 6 -->
						    	<td><c:out value="${list.time }"/></td><!-- 7 -->
					  		</tr>
					  	</tbody>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					</table>
				</div>
				<!-- pagination s -->
				<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
				<!-- pagination e -->
							
				<!-- 삭제 버튼 -->
				<!-- 모달띄우는것부터 시작 -->
				<!-- Button trigger modal -->
				<a href="#" data-toggle="modal" data-target="#deleteModal" class="modalBtn">
					<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  						<i class="fa-solid fa-x"></i>
					</button>
				</a>
				<a href="#" data-toggle="modal" data-target="#deleteModal2" class="modalBtn">
					<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
  						<i class="fa-regular fa-trash-can"></i>
					</button>	
				</a>
					<button type="button" class="btn btn-primary rightBtn" id="btnGameForm">
						<i class="fa-solid fa-plus"></i>
					</button>	
				<button type="button" class="btn btn-success rightBtn" style="margin-right: 5px;">
					<i class="fa-solid fa-file"></i>
				</button>
				
				
	   
	<br>		

				
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
    
    <!-- 완전삭제 모달 -->
    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">완전삭제</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">정말 삭제 하시겠습니까?</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <a class="btn btn-danger" href="codeGroup.html">삭제</a>
                </div>
            </div>
        </div>
    </div>

    
    <!-- 삭제 모달 -->
    <div class="modal fade" id="deleteModal2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">삭제</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">정말 삭제 하시겠습니까?</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
                    <a class="btn btn-danger" href="codeGroup.html">삭제</a>
                </div>
            </div>
        </div>
    </div> 
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    
    <!--  btn jquery-->
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
	
	<!-- js address -->
	<script type="text/javascript" src="/resources/js/game/game.js"></script>
</body>

</html>

