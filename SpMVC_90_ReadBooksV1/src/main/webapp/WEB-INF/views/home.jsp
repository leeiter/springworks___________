<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script> 
<script>
$(function() {
	
	$("#btn_books_up").click(function() {
		
		document.location.href = "${rootPath}/books/insert"
		
	})
	
})
</script>
</head>
<body>

<table>
	<tr>
		<th>ISBN</th>
		<th>도서명</th>
		<th>출판사</th>
		<th>저자</th>
		<th>역자</th>
		<th>페이지</th>
		<th>구입일자</th>
		<th>구입가격</th>
	</tr>
	<c:choose>
		<c:when test="${empty bsList}">
			<tr>
				<td>데이터가 없음</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${bsList}" var="book">
				<tr>
					<td>${book.b_code}</td>
					<td>${book.b_name}</td>
					<td>${book.b_comp}</td>
					<td>${book.b_auther}</td>
					<td>${book.b_trans}</td>
					<td>${book.b_page}</td>
					<td>${book.b_year}</td>
					<td>${book.b_iprice}</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<section>
	<button id="btn_books_up" class="bz-button">도서 등록</button>
</section>

</body>
</html>