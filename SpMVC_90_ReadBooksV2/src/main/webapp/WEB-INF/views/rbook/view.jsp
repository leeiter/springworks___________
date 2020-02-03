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

#rbooksview {

	width: 90%;
	margin: 50px auto;

}

#rbooksview th, #rbooksview td {



}

	th {
		background-color: black;
		color: white;
		text-align: right;
		width: 200px;
		padding: 10px 15px 10px 50px;
	}
	
	td {

		padding: 10px 15px 10px 25px;
		border-bottom: 1px solid black;
	}
	
	div.btn-box {
		display: flex;
		justify-content: center;
		align-content: center;
		
		width: 90%;
		margin: 10px auto;
		background-color: #fff;
		padding: 10px;
	}
	
	button {
		margin-right: 30px;
		padding: 10px 20px;
		border: none;
	}
	
	button:hover {
		background-color: #ddd;
		color: black;
		cursor: pointer;
	}
	
	.btn-update {
		background-color: black;
		color: white;
	}
	
	.btn-delete{
		background-color: black;
		color: white;
	}
	
	#btn-list {
		border-bottom: none;
	}
</style>

<script>
	$(function() {
		
		
		
		$(".btn-update").click(function() {
			document.location.href = "${rootPath}/rbook/update/${rbDTO.rb_seq}"
		})


		$(".btn-delete").click(function() {
			let msg = "독서록 일련번호 : ${rbDTO.rb_seq} \n"
			msg += "도서코드 : ${rbDTO.rb_bcode} \n"
			msg += "삭제할까요?"
			
			if(confirm(msg)) {
				document.location.href = "${rootPath}/rbook/delete/${rbDTO.rb_seq}"
			}
		})
		
		
	})

</script>


</head>
<body>
<%@ include file="/WEB-INF/views/include/include-header.jsp" %>
<section>
	<table id="rbooksview">
		<tr>
			<th>일련번호</th><td>${rbDTO.rb_seq}</td>
		</tr>
		<tr>
			<th>도서코드</th><td>${rbDTO.rb_bcode}</td>
		</tr>
		<tr>
			<th>독서느낌(별점)</th><td>${rbDTO.rb_star}</td>
		</tr>
		<tr>
			<th>독서일자</th><td>${rbDTO.rb_date}</td>
		</tr>
		<tr>
			<th>독서시작시간</th><td>${rbDTO.rb_stime}</td>
		</tr>
		<tr>
			<th>독서시간(분)</th><td>${rbDTO.rb_rtime}</td>
		</tr>
		<tr>
			<th>한줄소감</th><td colspan="5">${rbDTO.rb_subject}</td>
		</tr>
		
		<tr>
			<th>긴줄소감</th><td colspan="5">${rbDTO.rb_text}</td>
		</tr>
		<tr>
			<td colspan="6" id="btn-list">
				<div class="btn-box">
					<button class="btn-update">수정</button>
					<button class="btn-delete">삭제</button>
				</div>
			</td>
		</tr>
	</table>
</section>
</body>
</html>