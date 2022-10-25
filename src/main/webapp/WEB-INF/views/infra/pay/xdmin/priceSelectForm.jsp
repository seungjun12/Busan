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
				<td id="td3"><c:out value="${item.seatPrice }"/></td>
				<td id="td4">
					<select>
						<option>0매</option>
						<option>1매</opption>
					</select>
				</td>
			</tr>
		</table>
		<!-- 쿠폰할인 -->
		<div class="coupon">
			<span><b>쿠폰할인</b></span>
			<span style="color: gray; font-size: 11px;">(중복사용불가)</span>
		</div>
		<div class="couponBottom">
			<span>해당 상품에 사용 가능한 쿠폰이 없습니다.</span>
		</div>	
	</div><!-- priceWrap end -->
	<!-- 오른쪽 영역 -->
	<div class="rightWrap">
		<div class="rightInWrap">
			<!-- 경기 정보영역 -->
			<div class="gameInformation">
				<div>2022.<c:out value="${item.date }" /></div>
				<div><c:out value="${item.ground }" /></div>
				<div>전체관람가</div>
				<div>관람시간 : -</div>
			</div>
			<div class="myInformation">
				<b>My예매정보</b>
			</div>
			<table class="informationTable">
				<tr>
					<td>일시</td>
					<td><c:out value="${item.date }" />일<c:out value="${item.time }" />시</td>
				</tr>
				<tr>
					<td>선택좌석</td>
					<td><c:out value="${item.seatGrade }" /></td>
				</tr>
				<tr>
					<td>티켓금액</td>
					<td><c:out value="${item.seatPrice }" /></td>
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
						<a href="javascript:goSeatChoice(<c:out value="${item.gameSeq }"/>)" class="btn btn-dark" >이전단계</a>
					</div>
					<div class="col">
						<button type="button" class="btn btn-danger" onclick="location.href='deliveryForm.html'">다음단계</button>
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
	var seq = $("input:hidden[name=gameSeq]");
	var form = $("form[name=form]");
	
	
		/* $("#btnSeatChoice").on("click",function(seqValue){
			seq.val(seqValue);
			form.attr("action",goUrlSeatChoice).submit();
		}); */
		
	goSeatChoice = function(seqValue){
			seq.val(seqValue);
			form.attr("action" , goUrlSeatChoice).submit();
		};	
	
</script>

</body>
</html>