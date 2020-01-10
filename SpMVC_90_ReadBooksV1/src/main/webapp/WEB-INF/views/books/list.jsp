<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20202 독서록 관리</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.contextMenu.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.contextMenu.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-contextmenu/2.9.0/jquery.ui.position.min.js"></script>
 
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

#book_list_box {
	width: 100%;
	font-size: 0.8rem;
	text-align: center;
}

#book_list {
	

	
}

th, td {
	padding: 5px 0;
}

th {
	background-color: black;
	color: white;
	font-size: 0.9rem;
	font-weight: normal;
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

<script>
$(function() {
	
	$("#btn_books_up").click(function() {
		
		document.location.href = "${rootPath}/books/insert"
		
	})
	
	var contextCallBack = function(key, options) {
		
		if(key == 'write') {
			
			let b_code = $(this).attr("data-id");
			document.location.href = "${rootPath}/rbook/insert/" + b_code
			alert("독서록 작성" + $(this).attr("data-id"))
			
		}
		
		if(key == 'edit') {
			
			let b_code = $(this).attr("data-id");
			document.location.href = "${rootPath}/books/update/" + b_code
			alert("수정 클릭" + $(this).attr("data-id"))
		}
			
		if(key == 'delete') {
			if(confirm("도서정보를 삭제할까요?")) {
				let b_code = $(this).attr("data-id");
				
				$.ajax({
					
					url : "${rootPath}/books/delete",
					data : {b_code : b_code},
					type : 'POST',
					success : function(result) {
						if(result < 1)
							alert("삭제도중 문제 발생")
						else
							document.location.replace("${rootPath}/books/list")
					},
					error : function() {
						alert("서버 통신 오류")
					}
					
				})
				
	
				return false;
			}


	}

		
	}

	
	$.contextMenu({
		
		selector : '.booklist',
		callback : contextCallBack,
		items : {
			'write' : {name : '독서록 작성', icon : 'edit'},
			'edit' : {name : '수정', icon : 'edit'},
			'delete' : {name : '삭제', icon : 'delete'}
		}
		
	})
	
	
	
})
</script>
</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jsp" %>



<table id="book_list_box">
	<tr id="book_list">
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
			<c:forEach items="${bsList}" var="book" >
				<tr data-id="${book.b_code}" class="booklist" >
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