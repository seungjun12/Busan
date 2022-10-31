<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
					<td><fmt:formatNumber type="number" maxFractionDigits="3" value="${item.seatPrice}" />원</td>
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
			
			
			<script>
			$(function(){
				var num = $("#ticketPrice").text()
			    	//아이디 tag인 태그의 text를 읽어온다 
				num2 = $.numberWithCommas(parseInt(num));
			  	// 받아온 text값을 정수로 변환하여 numberwithCommas 함수의 인자값으로 넣는다
			})
			</script>
			     