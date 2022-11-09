<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>결제하기</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/payForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
</head>
<body>
<div class="wrap">
<form name="form" method="post">
<input type="hidden" name="seatGradeSeq" value="${item.seatGradeSeq }">
<input type="hidden" name="date" id="date" value="<c:out value="${item.date }"/>">
<input type="hidden" name="sessSeq" id="sessSeq" value="<c:out value="${sessSeq }"/>">
<input type="hidden" name="seatSeq" value="<c:out value="${item2.seatSeq }"/>">
<%-- <input type="text" value="${item.gameSeq }">
<input type="text" value="${item.seatNumber }"> --%>
	<!-- 헤더영역 -->
	<div class="headerWrap">
		<div>
			<span style="font-family: 'Single Day', cursive;">인터파크</span>
			<span>티켓예매</span>		
		</div>
		<table class="headerTable">
			<tr>
				<td style="background-color: #f7f7f7; color: #858383">가격/할인선택</td>
				<td style="background-color: #f7f7f7; color: #858383" >배송선택/주문자확인</td>
				<td style="background-color: #910505;">결제하기</td>
			</tr>
		</table>
	</div><!-- hearderWrap end -->
	<!-- 결제방식선택 -->
	<div class="selectWrap">
		<!-- 결제방식 버튼들 -->
		<div class="ticket">
			<div id="ticketHeader"><b>결제방식선택</b></div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		무통장입금
			  	</label>
			</div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		KB PAY
			  	</label>
			</div>
			<div class="form-check">
			  	<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioCheckedDisabled" checked disabled>
			  	<label class="form-check-label" for="flexRadioCheckedDisabled">
			    	신용카드
			  	</label>
			</div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		카카오페이
			  	</label>
			</div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		스포츠예매권
			  	</label>
			</div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		I-Point 사용
			  	</label>
			</div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		신세계 포인트
			  	</label>
			</div>
		</div>
	</div><!-- ticketInformation end -->	
	<div class="reserveWrap">	
		<!-- 예매자 정보 -->
		<div id="reserve"><!-- 여기부터 하자 -->
			<div class="reserveHeader"><b>결제수단입력</b></div>
		</div>
		<div class="cardInformation">
			신용카드정보
		</div>
		<div class="cardSelect">
			<span>일반신용카드</span>
			<select>
				<option>카드를선택해주세요.</option>
				<option>KB국민카드</option>
				<option>BC카드</option>
				<option>우리카드</option>
				<option>삼성카드</option>
				<option>현대카드</option>
				<option>신한카드</option>
				<option>롯데카드</option>
				<option>씨티카드</option>
				<option>하나카드</option>
				<option>외한카드</option>
				<option>NH카드</option>
			</select>
		</div>
		<div class="cardNumber">
			<input type="text" class="cardNumberInput"> -
			<input type="text" class="cardNumberInput"> -
			<input type="text" class="cardNumberInput"> -
			<input type="text" class="cardNumberInput">
		</div>
	</div>	
	<!-- 오른쪽배너 s -->
	<%@include file="../../../common/xdmin/includeV1/payRightSideBar.jsp"%>
	<!-- 오른쪽배너 e -->
			<!-- pageButton -->
			<div class="pageButton continer-fluid">
				<div class="row">
					<div class="col-6">
						<a href="javascript:goDelivery(<c:out value="${item.seatGradeSeq }"/>)"  class="btn btn-dark">이전단계</a>
					</div>
					<div class="col">
						<a  href="javascript:goPayComplete(<c:out value="${item.seatGradeSeq }"/>)" class="btn btn-danger">다음단계</a>
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
var goUrlPrice = "/pay/priceSelect";
var goUrlSeatChoice = "/main/seatChoice";
var goUrlDelivery = "/pay/delivery";
var goUrlPay ="/pay/pay";
var goUrlPayComplete = "/pay/payUpdt"

var seq = $("input:hidden[name=seatGradeSeq]");
var seqq = $("input:hidden[name=seatSeq]");
var form = $("form[name=form]");

goDelivery = function(seqValue){
	seq.val(seqValue);
	form.attr("action" , goUrlDelivery).submit();
};

goPayComplete = function(seqValue){
	seq.val(seqValue);
	seqq.val();
	form.attr("action" , goUrlPayComplete).submit();
} 


/* $("#btnComplete").on("click" , function(){
	form.attr("action" , goUrlPayComplete).submit();
}) */
</script>



</body>
</html>