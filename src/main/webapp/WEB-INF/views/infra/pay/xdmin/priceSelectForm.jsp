<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>가격/할인선택</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/priceSelectForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
</head>
<body>
<div class="wrap">
<form name="form" method="post">
<input type="hidden" name="seatGradeSeq" value="<c:out value="${item.seatGradeSeq }"/>">
	<!-- 헤더영역 -->
	<div class="headerWrap">
		<div>
			<span style="font-family: 'Single Day', cursive;">인터파크</span>
			<span>티켓예매</span>		
		</div>
		<table class="headerTable">
			<tr>
				<td style="background-color: #910505;">가격/할인선택</td>
				<td style="background-color: #f7f7f7; color: #858383">배송선택/주문자확인</td>
				<td style="background-color: #f7f7f7; color: #858383">결제하기</td>
			</tr>
		</table>
	</div><!-- hearderWrap end -->
	<!-- 왼쪽 가격 선택 영역 -->
	<div class="priceWrap">
	<input type="hidden" name="gameSeq" value="${item.gameSeq }">
		<div>
			<b>가격</b>
		</div>
		<div class="price">
			&nbsp;&nbsp;&nbsp;
			<span><b><c:out value="${item.seatGrade }"/>&nbsp;&nbsp;|</b></span>
			&nbsp;
			<span id="fontColor">좌석 </span>
			<span>을 선택하셨습니다.</span>
		</div>
		<table class="priceTable">
			<tr>
				<td id="td1">기본가</td>
				<td id="td2">일반</td>
				<td id="td3"><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.seatPrice}" />원</td>
				<td id="td4">
				</td>
			</tr>
		</table>
		<div>
			<div>
				<b>좌석선택</b>
			</div>
			<div>
			<c:choose>
				<c:when test="${fn:length(list) eq 0 }">
					<div>
						매진입니다
					</div>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list }" var="list" varStatus="status">
						<c:out value="${list.seatNumber }"/>
						<input type="checkbox" name="seatSeq" 
						value="${list.seatSeq }"  
						<c:if test="${list.purchaseDiv  eq 1}">disabled</c:if>
						>
						<%-- <c:out value="${list.purchaseDiv }"/> --%>
					</c:forEach>
				</c:otherwise>
			</c:choose>	
			</div>
		</div>
		<!-- 쿠폰할인 -->
		<div class="coupon">
			<span><b>쿠폰할인</b></span>
			<span style="color: gray; font-size: 11px;">(중복사용불가)</span>
		</div>
		<div class="couponBottom">
			<span>해당 상품에 사용 가능한 쿠폰이 없습니다.</span>
		</div>	
	</div><!-- priceWrap end -->
	<!-- 오른쪽배너 s -->
	<%@include file="../../../common/xdmin/includeV1/payRightSideBar.jsp"%>
	<!-- 오른쪽배너 e -->
	<!-- pageButton -->
			<div class="pageButton continer-fluid">
				<div class="row">
					<div class="col-6">
						<a href="javascript:goSeatChoice(<c:out value="${item.gameSeq }"/>)" class="btn btn-dark" >이전단계</a>
					</div>
					<div class="col">
						<%-- <a href="javascript:goDelivery(<c:out value="${item.seatGradeSeq }"/>)"  class="btn btn-danger" >다음단계</a> --%>
						<button id="goDeliveryBtn" class="btn btn-danger">다음단계</button>
					</div>
				</div>
			</div>
			
		</div><!-- rightInWrap end -->
	</div><!-- rightWrap end -->  
</form>
</div><!-- wrap end -->	


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	var goUrlSeatChoice = "/main/seatChoice"
	var goUrlDelivery = "/pay/delivery"
	var seq = $("input:hidden[name=seatGradeSeq]");
	var form = $("form[name=form]");
	/* $("input[name=seatSeq]:checked").each(function(){
		var chk = $(this).val();
	})	 */
/* 	var seqq = $("input:hidden[name=seatSeq]");
	
	var chk_arr =[]; 
	$("input[name=seatSeq]:checked").each(function(){
		var chk = $(this).val();
		chk_arr.push(chk);
	}) */
	
		
	goSeatChoice = function(seqValue){
		seq.val(seqValue);
		form.attr("action" , goUrlSeatChoice ).submit(); 
	};

	goDelivery = function(seqValue){
		seq.val(seqValue);
	    /* chk_arr.val(seqValue); */ 
		form.attr("action" , goUrlDelivery).submit();
	};	
	
	$("#goDeliveryBtn").on("click",function(){
		if($('input:checkbox[name="seatSeq"]').is(":checked") == true){
			form.attr("action", goUrlDelivery).submit();	
		}else{
			alert("좌석을 선택해주세요")
		}
	})
	
	/* function test(){
		var obj = $("[name=seatSeq]");
		var chkArray = new Array(); //배열선언
		
		$('input:checkbox[name=seatSeq]:checked').each(function(){
			chkArray.push(this.value);
		});
		form.attr("action" , goUrlDelivery).submit();
	} */
	
</script>

</body>
</html>