<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
				<!-- 왼쪽 영역 -->
				<div class="leftWrap">
					<!-- 왼쪽 위 등급 -->
					<div class="gradeWrap">
						<span><c:out value="${sessName }"/>님은</span>
						<br>
						<u>WELCOME</u>
						<span>등급입니다.</span>
					</div>
					<div class="memberFunction">
						<!-- 회원정보수정 -->
						<div class="memberModify leftFunction">
							<a id="btnInformationMod" style="cursor: pointer;">
								<i class="fa-solid fa-user-gear"></i>
								<span>회원정보수정</span>
							</a>
						</div>
						<!-- 비밀번호변경 -->
						<div class="leftFunction">
							<a id="btnPwdMod" style="cursor: pointer;">
								<i class="fa-solid fa-lock-open"></i>
								<span>비밀번호변경</span>
							</a>
						</div>
						<!-- 배송지관리 -->
						<div class="leftFunction">
							<i class="fa-solid fa-box"></i>
							<span>배송지관리</span>
						</div>
						<!-- SNS연결설정 -->
						<div class="leftFunction">
							<i class="fa-brands fa-google"></i>
							<span>SNS연결설정</span>
						</div>
						<!-- 로그인 관리 -->
						<div class="leftFunction">
							<i class="fa-solid fa-key"></i>
							<span>로그인 관리</span>
						</div>
						<!-- 회원탈퇴 -->
						<div class="leftFunction">
							<i class="fa-solid fa-door-open"></i>
							<span>회원탈퇴</span>
						</div>
					</div>
				</div><!-- leftWrap end -->