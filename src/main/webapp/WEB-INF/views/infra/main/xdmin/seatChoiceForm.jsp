<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>좌석선택</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/seatChoiceForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
</head>   
<body>
<form method="post" name="form" id="form">
<input type="hidden" name="seatGradeSeq" value="<c:out value="${seatGradeSeq }"/>"> 
<input type="hidden" value="<c:out value="${seatItem.gameSeq}"/>">
<div class="wrap">
	<!-- 헤더영역 -->
	<div class="headerWrap">
		<div>
			<span style="font-family: 'Single Day', cursive;">인터파크</span>
			<span>티켓예매</span>		
		</div>
		<div>
			<span><c:out value="${seatItem.whoHome}"/> vs <c:out value="${seatItem.whoAway }"/> (일반 회원 상품)</span>&nbsp;&nbsp;
			<span style="font-size: 11px; color: #cccccd">| <c:out value="${seatItem.ground }"/></span>
		</div>
	</div>
	<!-- 좌석도 -->
	<div class="seatMap">
		<img alt="SSG랜더스 좌석도 입니다" src="/resources/img/seat.png">
	</div>
	<!-- 좌석선택 리스트 영역 -->
	<div class="list">
		<div class="listScroll">
		<c:forEach items="${list }" var="list" varStatus="status">	
			<div>
				<%-- <input type="hidden" name="seatGradeSeq" value="${list.seatGradeSeq }"> --%>
				<a href="javascript:goPay(<c:out value="${list.seatGradeSeq }"/>)" class="text-decoration-none"><c:out value="${list.seatGrade }" /></a>
				&nbsp;<span>| <c:out value="${list.seatGrade_seatGradeSeq }" />석</span>
			</div>
		</c:forEach>	
		</div>
		<!-- 자동배정 버튼 -->
		<input type="hidden" name="gaemSeq" value="${seatItem.gameSeq }">
	</div>
</div><!-- wrap end -->	
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	var goUrlPrice = "/pay/priceSelect"
	var seq = $("input:hidden[name=seatGradeSeq]");				/* #-> */
	
	var form = $("form[name=form]");
	
	
	
	goPay = function(seqValue){
		seq.val(seqValue);
		form.attr("action" , goUrlPrice).submit();
	}

</script>

</body>
</html>