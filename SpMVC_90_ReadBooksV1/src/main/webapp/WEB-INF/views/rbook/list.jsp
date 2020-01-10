<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>20202 독서록 관리</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">


<script src="http://code.jquery.com/jquery-latest.min.js"></script>

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

#rbook_list_box {
	width: 100%;
	font-size: 0.8rem;
	text-align: center;
}

#rbook_list {
	

	
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
	width: 140px;
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
	
	$("#btn_rbooks_up").click(function() {
		
		document.location.href = "${rootPath}/books/list"
		
	})
	
	$(".rbooklist").click(function (e) {
            let rb_seq = $(this).attr("data-id")
            document.location.href = "${rootPath}/rbook/view?rb_seq=" + rb_seq
		})
/*	
	var contextCallBack = function(key, options) {
		
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
			'edit' : {name : '수정', icon : 'edit'},
			'delete' : {name : '삭제', icon : 'delete'}
		}
		
	})
	
	*/
	
})

</script>

</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jsp" %>


<table id="rbook_list_box">
	<tr id="rbook_list">
		<th>일련번호</th>
		<th>도서코드</th>
		<th>독서일자</th>
		<th>독서시작시각</th>
		<th>독서시간</th>
		<th>한줄소감</th>
		<th>긴줄소감</th>
		<th>독서느낌(별점)</th>
	</tr>
	<c:choose>
		<c:when test="${empty rbList}">
			<tr>
				<td>데이터가 없음</td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach items="${rbList}" var="rbook" >
				<tr data-id="${rbook.rb_seq}" class="rbooklist" >
					<td>${rbook.rb_seq}</td>
					<td>${rbook.rb_bcode}</td>
					<td>${rbook.rb_date}</td>
					<td>${rbook.rb_stime}</td>
					<td>${rbook.rb_rtime}</td>
					<td>${rbook.rb_subject}</td>
					<td>${rbook.rb_text}</td>
					<td>${rbook.rb_star}</td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</table>

<section>
	<button id="btn_rbooks_up" class="bz-button">도서 리스트 보기</button>
</section>





</body>
</html>