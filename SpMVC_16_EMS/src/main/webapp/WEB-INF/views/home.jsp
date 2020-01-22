<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My EMS</title>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/main.css?ver=2020-01-20-001">
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/table-list.css?ver=2020-01-20-001">
<link rel="stylesheet" type="text/css" href="${rootPath}/resources/css/email-write.css?ver=2020-01-20-001">

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.15/dist/summernote-lite.min.js"></script>
<script src="${rootPath}/resources/js/summernote-ko-KR.js"></script>

<style type="text/css">



button {
	background-color: rgb(2, 122, 214);
	color: white;
	font-size: 0.9rem;
	padding: 7px 25px;
	border: none;
	float: right;
	margin-top: 50px;
}

button:hover {
	background-color: black;
	font-weight: bold;
}

</style>
</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jspf" %>
<c:choose>
	<c:when test="${BODY == 'WRITE'}">
		<%@ include file="/WEB-INF/views/body/ems/write.jsp" %>
	</c:when>
	<c:when test="${BODY == 'VIEW'}">
		<%@ include file="/WEB-INF/views/body/ems/view.jsp" %>
	</c:when>
	<c:otherwise>
		<%@ include file="/WEB-INF/views/body/ems/list.jsp" %>
	</c:otherwise>
</c:choose>
</body>
</html>