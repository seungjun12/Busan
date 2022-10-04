<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>예매확인/취소</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/memberCheckForm_style.css" rel="stylesheet" type="text/css">
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
	<!-- 매인랩 시작 -->
	<form name="form" method="post">
	<%-- <input type="hidden" name="regmember_seq" value="<c:out value="${dto.regmember_seq }"/>"> --%>
	<div class="mainWrap">
		<div class="rightCancel">
			<i class="fa-solid fa-star"></i>
			<span>예매내역확인,취소</span>
		</div>
		<input type="hidden" id="sessSeq" name="sessSeq" value="<c:out value="${sessSeq }"/>">
		<!-- 조회기간 선택 -->
		<div class="selectPeriod">
			<span id="colorRed"><c:out value="${sessName }"/></span>
			<span>님의 지난 일주일간의 티켓 예매내역 입니다.</span>
		</div>
		<div class="selectBox">
			<span id="fontSize">조회기간 선택</span>
			<button type="button" class="btn btn-danger">1주일</button>
			<button type="button" class="btn btn-outline-danger">1달</button>
			<button type="button" class="btn btn-outline-danger">3달</button>
			<button type="button" class="btn btn-outline-danger">1년</button>
		</div>
		<table class="table">
  			<thead class="table-secondary">
   				<tr>
	   				<td>예매일</td>
	   				<td>예약번호</td>
	   				<td>상품명</td>
	   				<td>이용일</td>
	   				<td>매수</td>
	   				<td>취소가능일</td>
	   				<td>현재상태</td>
  				</tr>
  			</thead>
  			<c:choose>
  				<c:when test="${fn:length(reglist) eq 0 }">
  					<tr>
  						<td class="text-center" colspan="7">예매내역이 없습니다.</td>
  					</tr>
  				</c:when> 
  				<c:otherwise> 
  				<c:forEach items="${reglist }" var="reglist" varStatus="status">		
  			<tbody>
				<tr>
					<td><c:out value="${reglist.registerDob }" /></td>
					<td><c:out value="${reglist.registerNumber }" /></td>
					<td><c:out value="${reglist.registerName }"/></td>
					<td><c:out value="${reglist.dateUse }"/></td>
					<td><c:out value="${reglist.count }"/>장</td>
					<td><c:out value="${reglist.deleteDate }"/></td>
					<td><c:out value="${reglist.state }"/></td>    
  				</tr>
  			</tbody>
  				</c:forEach>
  				</c:otherwise> 
			</c:choose> 
		</table>		
	</div><!-- mainWrap end -->
	</form>
	<!-- 푸터 s -->
	<%@include file="../../../common/xdmin/includeV1/footer.jsp"%>
	<!-- 푸터 e -->
	
	
</div> <!-- wrap end -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
</body>
</html>