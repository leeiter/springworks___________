<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
</head>
<form>
	<fieldset>
		<legend>도서정보 작성</legend>
		<input type="text" placeholder="도서 코드" />
		<input type="text" placeholder="도서명" />
		<input type="text" placeholder="출판사" />
		<input type="text" placeholder="저자" />
		<input type="text" placeholder="역자" />
		<input type="text" placeholder="페이지" />
		<input type="text" placeholder="구입연도" />
		<input type="text" placeholder="구입가격" />
	</fieldset>
</form>




</body>
</html>