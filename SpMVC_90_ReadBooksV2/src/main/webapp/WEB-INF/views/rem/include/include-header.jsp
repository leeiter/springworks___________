<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>

<style>

</style>

<header>
	<h3>2020 독서록 관리</h3>
</header>

<nav>
	<ul>
		<li><a href="${rootPath}/">홈</a></li>
		<li><a href="">도서정보</a></li>
		
		
		<c:if test="${mDTO == null || mDTO.m_id == null}">
			<li><a href ="${rootPath}/member/login">로그인</a></li>
		</c:if>
		
		<c:if test="${mDTO != null || mDTO.m_id != null}">
			<li><a href ="${rootPath}/member/logout">${mDTO.m_id}</a></li>
		</c:if>

	</ul>
</nav>


