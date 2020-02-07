<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FRIEND</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.contextMenu.min.css"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.contextMenu.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.ui.position.min.js"></script>
	
<style type="text/css">
* {
	font-family: Arita-dotum-Medium;
}

body {
	width: 80%;
	margin: 0 auto;
}

@font-face {
	font-family: 'Arita-dotum-Medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_one@1.0/Arita-dotum-Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

h3 {
	font-size: 2.5rem;
	font-weight: bold;
	text-align: center;
	padding: 20px 0;
}

.f_search {
	width: 80%;
	margin: 20px auto;
}

.f_cat {
	padding: 6px 0;
}

.f_input {
	padding: 3px 0 1px 5px;
	width: 250px;
}
</style>

</head>
<body>
	<header>
		<h3>FRIEND</h3>
	</header>

	<section>
		<c:choose>
			<c:when test="${BODY == 'FRIEND_INPUT'}">
				<%@ include file="/WEB-INF/views/input.jsp"%>
			</c:when>
			<c:otherwise>
				<form action="${rootPath}/search" class="text-center f_search">
					<select name="cat" class="f_cat">
						<option value="name">이름</option>
						<option value="tel">전화번호</option>
					</select> <input name="search" class="f_input"
						placeholder="검색어 입력후 Enter...">
					<button type="button" class="btn btn-info">검색</button>
				</form>

				<%@ include file="/WEB-INF/views/list.jsp"%>
			</c:otherwise>
		</c:choose>
	</section>
</body>
</html>