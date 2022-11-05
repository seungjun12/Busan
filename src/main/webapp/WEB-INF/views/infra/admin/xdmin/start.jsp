<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>시작</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	<link href="/resources/css/findIdForm_style.css" rel="stylesheet" type="text/css">
	
	<style type="text/css">
	.wrap{
		margin: auto;
		margin-top: 450px;
	}
	
	</style>
</head>
<body>
<div class="wrap">
	<div class="container text-center">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-2">
				<a type="button" id="btnUser">
					<img alt="유저 페이지 이동입니다" src="../resources/img/user.png">
				</a>	
				<!-- <button type="button" id="btnUser" class="btn btn-danger">사용자</button> -->
			</div>
			<div class="col-2">
				<button type="button" id="btnAdmin" class="btn btn-info">관리자</button>
			</div>
			<div class="col"></div>	
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/45142342b0.js" crossorigin="anonymous"></script>

<!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
	var goUrlUser = "/main/index";
	var goUrlAdmin = "/admin/login";
	
	$("#btnUser").on("click",function(){
		$(location).attr("href",goUrlUser);
	});	

	$("#btnAdmin").on("click",function(){
		$(location).attr("href",goUrlAdmin);
	});	

</script>


</body>
</html>