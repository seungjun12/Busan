<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@include file="../common/xdmin/includeV1/head.jsp"%>

</head>
<body>
publicCorona1List

<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
<br>aaa : <c:out value="${items }"/>
<br>aaa : <c:out value="${fn:length(item) }"/>

<c:forEach items="${item}" var="item" varStatus="status">
	<c:out value="${item.lot }"/>
	<br><c:out value="${item.no }"/>
	<br><c:out value="${item.lt_addr }"/>
	<br><c:out value="${item.no }"/>
	<br><c:out value="${item.no }"/>
</c:forEach>

</body>
</html>