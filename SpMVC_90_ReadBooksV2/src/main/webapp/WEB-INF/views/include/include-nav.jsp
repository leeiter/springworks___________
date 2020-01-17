<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<nav>
	<ul>
		<li><a href="${rootPath}/">홈</a></li>
		<li><a href="${rootPath}/books/list">독서 목록</a></li>
		<li><a href="#">로그인</a></li>
	</ul>
</nav>