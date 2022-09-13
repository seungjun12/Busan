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
<form action="">
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
	
	
	
		

	<!-- 오른쪽 영역 -->
	<div class="rightWrap">
		<div class="rightInWrap">
			<!-- 경기 정보영역 -->
			<div class="gameInformation">
				<div>2022.08.10~2022.08.10</div>
				<div>인천SSG랜더스필드</div>
				<div>전체관람가</div>
				<div>관람시간 : -</div>
			</div>
			<div class="myInformation">
				<b>My예매정보</b>
			</div>
			<table class="informationTable">
				<tr>
					<td>일시</td>
					<td>2022년 8월 10일 18:30</td>
				</tr>
				<tr>
					<td>선택좌석(1석)</td>
					<td>1루 일반석</td>
				</tr>
				<tr>
					<td>티켓금액</td>
					<td>12,000원</td>
				</tr>
				<tr>
					<td>수수료</td>
					<td>1,000원</td>
				</tr>
				<tr>
					<td>배송료</td>
					<td></td>
				</tr>
				<tr>
					<td>할인</td>
					<td></td>
				</tr>
				<tr>
					<td>할인쿠폰</td>
					<td></td>
				</tr>
				<tr>
					<td>취소기한</td>
					<td style="color: red">2022년 8월 10일 11:00</td>
				</tr>
				<tr>
					<td>취소수수료</td>
					<td style="color: red">티켓금액의 0~10%</td>
				</tr>
			</table>
			<!-- pageButton -->
			<div class="pageButton continer-fluid">
				<div class="row">
					<div class="col-6">
						<button type="button" class="btn btn-dark" onclick="location.href='deliveryForm.html'">이전단계</button>
					</div>
					<div class="col">
						<button type="button" class="btn btn-danger" onclick="location.href='payCompleteForm.html'">다음단계</button>
					</div>
				</div>
			</div>
			
		</div><!-- rightInWrap end -->
	</div><!-- rightWrap end -->
</form>
</div><!-- wrap end -->	


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>