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
<div class="wrap">
	<!-- 헤더영역 -->
	<div class="headerWrap">
		<div>
			<span style="font-family: 'Single Day', cursive;">인터파크</span>
			<span>티켓예매</span>		
		</div>
		<div>
			<span>SSG vs 엘지 (일반 회원 상품)</span>&nbsp;&nbsp;
			<span style="font-size: 11px; color: #cccccd">| 인천SSG랜더스필드</span>
		</div>
	</div>
	<!-- 좌석도 -->
	<div class="seatMap">
		<img alt="SSG랜더스 좌석도 입니다" src="/resources/img/seat.png">
	</div>
	<!-- 좌석선택 리스트 영역 -->
	<div class="list">
		<div class="listScroll">
			<div>
				<a style="cursor: pointer">1루 외야 일반석</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>1루 응원지정석</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>1루 의자지정석</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>1루 이마트 프렌들리존</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div class="div2" style="cursor: pointer;">
				<a>1루 일반석</a>
				&nbsp;<span>| 1석</span>
			</div>
			<div>
				<a>1루 홈런커플존</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>1루 휠체어장애인석(동반인O)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>1루 휠체어장애인석 (동반인x)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>3루 외야 일반석</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>3루 응원지정석</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>3루 의자지정석</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>3루 이마트 프렌들리존</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>3루 일반석(중앙)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>4층 일반석(L)</a>
				&nbsp;<span>| 1석</span>
			</div>
			<div>
				<a>4층 일반석(R)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>내야패밀리</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>노브랜드 테이블석</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>랜더스 라이브존</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>로케트배터리 외야파테덱(4인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>로케트배터리 외야파티덱(6인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>로케트배터리 외야파티덱(8인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>스카이박스 L(12인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>스카이박스 L(16인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>스카이박스 L(8인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>외야패밀리존(4인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>외야패밀리존(5인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>이마트바비큐존(4인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>이마트바비큐존(5인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>이마트바비큐존(6인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>이마트바비큐존(7인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>이마트바비큐존(8인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>초가정자(8인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>최정 400홈런 기념존</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>토이킹덤 미니스카이박스 L(4인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>토이킹덤 미니스카이박스 L(6인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>토이킹덤 미니스카이박스 R(4인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>토이킹덤 미니스카이박스 R(6인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 L(4층/2인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 L(4층/3인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 L(4층/4인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 L(4층/5인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 R</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 R(4층/2인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 R(4층/4인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>SKY탁자석 R(4층/5인)</a>
				&nbsp;<span>| 매진</span>
			</div>
			<div>
				<a>몰리스그린존</a>
				&nbsp;<span>| 매진</span>
			</div>
		</div>
		<!-- 자동배정 버튼 -->
		<div class="btnAuto">
			<button type="button" class="btn btn-danger" onclick="location.href='../pay/priceSelectForm.html'">자동배정</button>
		</div>
	</div>
</div><!-- wrap end -->	


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>
<script type="text/javascript">
var div2 = document.getElementsByClassName("div2");

function handleClick(event) {
  console.log(event.target);
  // console.log(this);
  // 콘솔창을 보면 둘다 동일한 값이 나온다

  console.log(event.target.classList);

  if (event.target.classList[1] === "clicked") {
    event.target.classList.remove("clicked");
  } else {
    for (var i = 0; i < div2.length; i++) {
      div2[i].classList.remove("clicked");
    }

    event.target.classList.add("clicked");
  }
}

function init() {
  for (var i = 0; i < div2.length; i++) {
    div2[i].addEventListener("click", handleClick);
  }
}

init();
</script>
</body>
</html>