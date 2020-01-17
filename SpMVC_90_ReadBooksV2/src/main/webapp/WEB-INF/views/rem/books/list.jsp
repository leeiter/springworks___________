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





</body>
</html>