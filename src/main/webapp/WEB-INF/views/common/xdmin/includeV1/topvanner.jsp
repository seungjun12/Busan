<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<div id="topGnbbg">
		<!-- 최상단 배너 -->
		<div id="topGnb">
			<ul class="nav nav-tabs">
				<li class="nav-item">
				  <a class="nav-link disabled topGnb">홈</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link disabled topGnb">도서</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link active topGnb" aria-current="page" href="#">티켓</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link disabled topGnb">투어</a>
				</li>
				<c:choose>
					<c:when test="${sessSeq eq null}"> <!-- 으아 이거 해결해보자 -->
						<li class="topBanner" style="margin-left: 350px;"><a type="button" class="btnLogin" style="cursor: pointer; text-decoration: none; color: black">로그인</a>
						<li class="topBanner" style="margin-left: 10px;"><a type="butoon" class="btnRegister" style="cursor: pointer; text-decoration: none; color: black">회원가입</a>
						<li class="topBanner" style="margin-left: 10px;"><a type="button" class="btnLogin" style="cursor: pointer; text-decoration: none; color: black">예매확인/취소</a>
						<li class="topBanner" style="margin-left: 10px;"><a  type="button" class="btnLogin" style="cursor: pointer; text-decoration: none; color: black">마이페이지</a>						
					</c:when>
					<c:otherwise>
						<li class="topBanner" style="margin-left: 350px;"><a type="button" id="btnLogout" style="cursor: pointer;">로그아웃</a>
						<li class="topBanner" style="margin-left: 10px;"><span><c:out value="${sessName }"/>님</span>
						<li class="topBanner" style="margin-left: 10px;"><a type="button" style="cursor: pointer;">예매확인/취소</a>
						<li class="topBanner" style="margin-left: 10px;"><a  type="button" id="btnMemberView" style="cursor: pointer;">마이페이지</a>
					</c:otherwise>
				</c:choose>			
				<li class="topBanner" style="margin-left: 10px;">고객센터
				<li class="topBanner" style="margin-left: 10px;">모바일APP
				<li class="topBanner" style="margin-left: 10px;">Languages
			</ul>
			<%-- sessName: <c:out value="${sessName }"/><br>
			sessId: <c:out value="${sessId }"/><br> 
			sessEmail: <c:out value="${sessEmail}"/><br> 
			sessAdress: <c:out value="${sessAdress}"/><br>
			sessSeq :<c:out value="${sessSeq }"/> --%>   
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
	<script>
	/* 로그아웃 */ 
		$("#btnLogout").on("click", function(){
			/* if(validation() == false) return false; */
			
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/logoutProc"
				/* ,data : $("#formLogin").serialize() */
				,data : {}
				,success: function(response) {
					if(response.rt == "success") {
						/* if(response.changePwd == "true") {
							location.href = URL_CHANGE_PWD_FORM;
						} else {
							location.href = URL_INDEX_ADMIN;
						} */
						
						location.href = goUrlIndex;
					} else {
						alert("회원없음");
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		</script>	
		