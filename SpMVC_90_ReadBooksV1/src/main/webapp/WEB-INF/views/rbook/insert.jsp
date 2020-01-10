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
	<legend>독서록 등록</legend>
	<form:form modelAttribute="rbDTO"  autocomplete="on"  class="rbook-form">
	
			
		<form:input type="hidden" path="rb_seq"  class="in-box" placeholder="일련번호"  /><br/>
		
		<form:input path="rb_bcode"  class="in-box" placeholder="도서코드"  /><br/>
		<form:input path="rb_date" class="in-box" placeholder="독서일자"  /><br/>
		<form:input path="rb_stime"  class="in-box" placeholder="독서시작시각"  /><br/>
		<form:input path="rb_rtime"  class="in-box" placeholder="독서시간"  /><br/>
		<form:input path="rb_subject"  class="in-box" placeholder="한줄소감"  /><br/>
		<form:textarea path="rb_text"  class="in-box" placeholder="긴줄소감"  /><br/>

		<input id="rb_star" type="number" value='<c:out value="${rbDTO.rb_star}" default="1" />' min="1" max="5" name="rb_star">
		<button class="bz-button">저장</button>
	</form:form>
</fieldset>

</body>
</html>