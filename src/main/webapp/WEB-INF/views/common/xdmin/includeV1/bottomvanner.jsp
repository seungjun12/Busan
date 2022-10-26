<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div id="bottomGnb">
		<div id="bottomGnbList">
			<ul class="bottomGnbList">
				<!-- <li class="bottomGnbList"><a><i class="fa-solid fa-align-justify"></i></a>
				<li class="bottomGnbList">뮤지컬
				<li class="bottomGnbList">콘서트
				<li class="bottomGnbList">연극
				<li class="bottomGnbList">클래식/무용 -->
				<li class="bottomGnbList" id="btnTeamChoice" style="cursor: pointer">스포츠예매
				<!-- <li class="bottomGnbList">레저
				<li class="bottomGnbList">전시/행사
				<li class="bottomGnbList">아동/가족
				<li class="bottomGnbList">TOPING -->
			</ul>					
		</div>
		<div id="bottomGnbRight">
			<ul class="bottomGnbList">		
				<!-- <li class="bottomGnbList"><i class="fa-regular fa-bookmark"></i>랭킹
				<li class="bottomGnbList">지역
				<li class="bottomGnbList"><i class="fa-solid fa-location-dot"></i>공연장 -->
			</ul>
		</div>		
	</div>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
		<script>
			var goUrlTeamChoice = "/main/teamChoice";
			
			$("#btnTeamChoice").on("click",function(){
				$(location).attr("href",goUrlTeamChoice);
			});	
			
		</script>