<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<style>
h3 {
	font-size: 2.5rem;
	text-align: center;
}

nav ul {
	display: flex;
	background-color: black;
	font-size: 1rem;
}

a {
	display: block;
	color: white;
	width: 120px;
	text-align: center;
	padding: 10px 0;
}

a:hover {
	background-color: gray;
}

li:last-child {
	margin-left: auto;
}
</style>

<header>
	<h3>2020 독서록 관리</h3>
</header>

<nav>
	<ul>
		<li><a href="${rootPath}/">홈</a></li>
		<li><a href="${rootPath}/books/list">도서정보</a></li>
		
		<c:choose>
			<c:when test="${mDTO.m_id == null}">
				<li><a href ="${rootPath}/member/login">로그인</a></li>
			</c:when>
			<c:otherwise>
				<c:forEach items="${mDTO}" var="member">
					<li><a href ="${rootPath}/member/logout">${member.m_id}</a></li>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</ul>
</nav>


