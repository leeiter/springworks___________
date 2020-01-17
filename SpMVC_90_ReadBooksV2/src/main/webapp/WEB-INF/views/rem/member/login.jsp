<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style type="text/css">
* {
	marign: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	width: 80%;
	height: 100%;
	margin: 0 auto;
}

li {
	list-style-type: none;
}

a {
	text-decoration:none;
}

.login-form {
	border-radius: 20px;
	width: 20%;
	margin: 50px auto;
	background-color: black;
	height: 270px;
}

.login-form>h2 {
	color: white;
	text-align: center;
	padding: 30px 0 10px 0;
}

.login-box {
	text-align:center;
	width: 200px;
	padding: 7px 5px;
	margin: 0 auto;
	display: block;
}

#btn-login {

	background-color: white;
	font-size: 0.9rem;
	display: block;
	text-align: center;
	padding: 4px 20px;
	margin: 10px auto;

}


</style>

<script type="text/javascript">
$(function() {

	
	
})

</script>
</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jsp" %>

<form method="POST" action="${rootPath}/member/login" class="login-form">
	<h2>로그인</h2>
	<c:if test="${LOGIN_MSG == 'FAIL'}">
		<h3>아이디나 비밀번호가 잘못되었습니다.</h3>
	</c:if>
	<c:if test="${LOGIN_MSG == 'TRY'}">
		<h3>로그인을 해야합니다.</h3>
	</c:if>
	<c:if test="${LOGIN_MSG == 'NO_AUTH'}">
		<h3>작성자 만이 볼수 있음!!!</h3>
	</c:if>
	
	<c:if test="${LOGIN_MSG == '0'}">
		<h3>로그인을 환영합니다.</h3>
	</c:if>
	<input type="email" id="m_id" name="m_id" placeholder="사용자 ID" class="login-box"><br/>
	<input type="password" id="m_password" name="m_password" placeholder="비밀번호" class="login-box"><br/>
	<button type="submit" id="btn-login">로그인</button>
</form>


</body>
</html>