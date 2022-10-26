<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>배송선택/주문자확인</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/deliveryForm_style.css" rel="stylesheet" type="text/css">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Single+Day&display=swap" rel="stylesheet">
</head>
<body>
<div class="wrap">
<form name="form" method="post">
<input type="hidden" name="seatGradeSeq" value="${item.seatGradeSeq }">
	<!-- 헤더영역 -->
	<div class="headerWrap">
		<div>
			<span style="font-family: 'Single Day', cursive;">인터파크</span>
			<span>티켓예매</span>		
		</div>
		<table class="headerTable">
			<tr>
				<td style="background-color: #f7f7f7; color: #858383">가격/할인선택</td>
				<td style="background-color: #910505;">배송선택/주문자확인</td>
				<td style="background-color: #f7f7f7; color: #858383">결제하기</td>
			</tr>
		</table>
	</div><!-- hearderWrap end -->
	<!-- 티켓/예매자 영역 -->
	<div class="ticketInformation">
		<!-- 티켓 영역 -->
		<div class="ticket">
			<div id="ticketHeader"><b>티켓수령방법</b></div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		현장수령
			  	</label>
			</div>
			<div class="form-check">
		  		<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioDisabled" disabled>
			  	<label class="form-check-label" for="flexRadioDisabled">
		   	 		배송(3,000원)
			  	</label>
			</div>
			<div class="form-check">
			  	<input class="form-check-input" type="radio" name="flexRadioDisabled" id="flexRadioCheckedDisabled" checked disabled>
			  	<label class="form-check-label" for="flexRadioCheckedDisabled">
			    	모바일티켓
			  	</label>
			</div>
		</div>
	</div><!-- ticketInformation end -->	
	<div class="reserveWrap">	
		<!-- 예매자 정보 -->
		<div id="reserve"><!-- 여기부터 하자 -->
			<div class="reserveHeader"><b>예매자 확인</b></div>
		</div>
		<table class="reserveTable">
			<tr>
				<td class="tdColor">이름</td>
				<td><c:out value="${sessName }" /></td>
			</tr>
			<tr>
				<td class="tdColor">생년월일</td>
				<td>
					<input type="text" style="width: 70px;">
					예)870201 (YYMMDD)
				</td>
			</tr>
		</table>
		<div class="reserveInformation">
			<span>생년월일을 정확히 입력해주세요,가입 시 입력하신 정보와 다를경우,</span>
			<span>본인확인이 되지 않아 예매가 불가합니다.</span>
		</div>
		<table class="reserveTable">
			<tr>
				<td class="tdColor">연락처</td>
				<td>
					<input type="text" placeholder="ex)010-1234-5678" id="number" name="number" oninput="autoHyphen(this)" maxlength="13">
				</td>
			</tr>
			<tr>
				<td class="tdColor">이메일</td>
				<td>
					<input type="text">
				</td>
			</tr>
			<tr>
				<td class="tdColor">응원구단</td>
				<td>SSG</td>
			</tr>
		</table>
	</div>	
	<!-- 오른쪽배너 s -->
	<%@include file="../../../common/xdmin/includeV1/payRightSideBar.jsp"%>
	<!-- 오른쪽배너 e -->
			<!-- pageButton -->
			<div class="pageButton continer-fluid">
				<div class="row">
					<div class="col-6">
						<a href="javascript:goPrice(<c:out value="${item.seatGradeSeq }"/>)" class="btn btn-dark">이전단계</a>
					</div>
					<div class="col">
						<a href="javascript:goPay(<c:out value="${item.seatGradeSeq }"/>)" class="btn btn-danger">다음단계</a>
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

var seq = $("input:hidden[name=seatGradeSeq]");
var form = $("form[name=form]");

goPrice = function(seqValue){
	seq.val(seqValue);
	form.attr("action" , goUrlPrice).submit();
};

goPay = function(seqValue){
	seq.val(seqValue);
	form.attr("action" , goUrlPay).submit();
};


//전화번호 하이픈
const autoHyphen = (target) => {
target.value = target.value
.replace(/[^0-9]/g, '')
.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
}



</script>



</body>
</html>