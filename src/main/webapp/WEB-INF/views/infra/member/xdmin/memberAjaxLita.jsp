<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

				<!-- 리스트 영역 -->
				<div style="color: black">
					<span>total: <c:out value="${vo.totalRows }"/></span>
				</div>
				<div class="listWrap">
					<table class="table">
				  		<thead style="background-color: black; color: white;">
					    	<td class="td1"><input class="test" type="checkbox" value="allmemberchecked" onclick="selectall(this);" name="allmembercheck"></td>
					    	<td>#</td>
					    	<td>이름</td>
					    	<td class="td3">아이디</td>
					    	<!-- <td class="td3">비밀번호</td> -->
					    	<td class="td4">성별</td>
					    	<td class="td5">이메일</td>
					    	<td class="td6">휴대폰</td>
					    	<td>주소</td>
					    	<td>상세주소</td>
					    	<td>우편번호</td>
					    	<td class="td3">개인정보 유효기간</td>
					  	</thead>
					  	<c:set var="listCodeGender" value="${CodeServiceImpl.selectListCachedCode('2')}"/>
					  	<c:set var="listCodePersonal" value="${CodeServiceImpl.selectListCachedCode('3')}"/>
					  	<c:choose> 
					  		<c:when test="${fn:length(list) eq 0}">
					  			<tr>
					  				<td class="text-center" colspan="11">There is no data!</td>
					  			</tr>
					  		</c:when> 
					  		<c:otherwise>
					  		<c:forEach items="${list}" var="list" varStatus="status">
					  	<tbody>
							<tr>	    	
						    	<td><input class="test" type="checkbox" value="memberchecked" name="membercheck"></td>
						    	<td><c:out value="${list.seq }"/></td>
						    	<td><a href="javascript:goView(<c:out value="${list.seq }"/>)" class="text-decoration-none"><c:out value="${list.name }"/></td>
						    	<td><c:out value="${list.id }"/></td>
						    	<%-- <td><c:out value="${list.pwd }"/></td> --%>
						    	<td>
						    		<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
										<c:if test="${list.gender eq listGender.ccseq}"><c:out value="${listGender.ccnameko }"/></c:if>
									</c:forEach>
						    	</td>
						    	<td><c:out value="${list.email }"/></td>
						    	<td><c:out value="${list.number }"/></td>
						    	<td><c:out value="${list.address }"/></td>
						    	<td><c:out value="${list.address2 }"/></td>
						    	<td><c:out value="${list.addressCode }"/></td>
						    	<td>
						    		<c:forEach items="${listCodePersonal}" var="listPersonal" varStatus="statusGender">
										<c:if test="${list.personalAgree eq listPersonal.ccseq}"><c:out value="${listPersonal.ccnameko }"/></c:if>
									</c:forEach>
						    	</td>
				    		</tr>
				    	</tbody>
					  		</c:forEach>
					  		</c:otherwise>
						</c:choose>
					  	
					  		
					  	
					  		
					  		
					</table>
				</div>
				<!-- pagination s -->
				<%@include file="../../../common/xdmin/includeV1/pagination.jsp"%>
				<!-- pagination e -->	