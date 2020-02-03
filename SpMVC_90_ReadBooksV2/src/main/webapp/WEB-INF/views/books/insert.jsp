<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20202 독서록 관리</title>
<style>
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

fieldset {
	border: none;
	width: 80%;
	margin: 0 auto;
}

legend {
	font-size: 1.5rem;
	text-align: center;
	font-weight: bold;
	padding: 10px 0;
}

.in-box {
	font-size: 1rem;
	padding: 5px 7px;
	width: 100%;
	margin-bottom: 6px;
	
	
}

.bz-button {
	font-size: 0.9rem;
	font-weight: bold;
	display: block;
	width: 110px;
	color: white;
	border: none;
	background-color: black;
	padding: 7px 0;
	margin: 30px auto;
}

.bz-button:hover {
	background-color: gray;
}


</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jsp" %>

<fieldset>
	<legend>도서 등록</legend>
	<form:form modelAttribute="bsDTO"  autocomplete="on"  class="book-form">		
		<form:input type="hidden" path="b_code"  class="in-box" placeholder="도서 코드"  /><br/>
		<form:input path="b_name"  class="in-box" placeholder="도서명"  /><br/>
		<form:input path="b_comp" class="in-box" placeholder="출판사"  /><br/>
		<form:input path="b_auther"  class="in-box" placeholder="저자"  /><br/>
		<form:input path="b_trans"  class="in-box" placeholder="역자"  /><br/>
		<form:input path="b_page"  class="in-box" placeholder="페이지"  /><br/>
		<form:input path="b_year"  class="in-box" placeholder="구입연도"  /><br/>
		<form:input path="b_iprice"  class="in-box" placeholder="구입가격"  /><br/>
		<button class="bz-button">저장</button>
	</form:form>
</fieldset>

</body>
</html>