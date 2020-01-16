<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 홈페이지</title>
<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
<link href="${rootPath}/css/rbook-main.css?ver=2020-01-14-001" rel="styleSheet">
<link href="${rootPath}/css/main-table.css?ver=2020-01-14-001" rel="styleSheet">
<link href="${rootPath}/css/color.css?ver=2020-01-14-001" rel="styleSheet">
<script type="text/javascript">
$(function() {
	
	// #("#btn-write").click(function() {
	$("#btn-write").click( ()=> {
		document.location.href = "${rootPath}/book/write"
	})
	
})
</script>
<style type="text/css">
#main-writer {
	width: 80%;
	margin: 50px auto;	
}

.input_box {
	display: flex;
	width: 80%;
	margin: 5px auto;
}

.p_box {
	color: white;
	font-weight: bold;
	text-align: right;
	padding: 10px 7px;
	width: 15%;
	margin-right: 10px;
	background-color: rgb(52, 152, 219); 
}

.input_box_form {
	border: none;
	border-bottom: 1px solid rgb(52, 152, 219);
	display: block;
	padding: 10px 7px;
	font-size: 0.9rem;
	width: 100%;
	margin-right: 0;
}

.input_text {
	height: 250px;
	overflow: scroll;
}


.btn_input {
	margin-top: 30px;
	margin-right: 170px;
}




</style>
</head>
<body>
<header>
	<h2>My READ BOOK</h2>
</header>
<%@ include file="/WEB-INF/views/include/include-nav.jspf" %>

<section id="main-writer">
	<article>
		<form:form modelAttribute="rBookVO">
			
			<div class="input_box">
			<p class="p_box">도서 코드</p>
			<form:input type="text" path="rb_bcode" placeholder="도서 코드" class="input_box_form" />
			</div>
		
			<div class="input_box">
			<p class="p_box">독서일자</p>
			<form:input type="text" path="rb_date" placeholder="독서일자" class="input_box_form" />
			</div>
					
			<div class="input_box">
			<p class="p_box">독서시작시간</p>
			<form:input type="text" path="rb_stime" placeholder="독서시작시간" class="input_box_form" />
			</div>

			<div class="input_box">
			<p class="p_box">독서시간</p>
			<form:input type="text" path="rb_rtime" placeholder="독서시간" class="input_box_form" />
			</div>
					
			<div class="input_box">
			<p class="p_box">한줄평</p>
			<form:input type="text" path="rb_subject" placeholder="한줄평" class="input_box_form" />
			</div>
					
			<div class="input_box">
			<p class="p_box">별점</p>
			<form:input type="text" path="rb_star" placeholder="별점" class="input_box_form" />
			</div>
					
			<div class="input_box">
			<p class="p_box ">긴줄소감</p>
			<form:textarea path="rb_text" class="input_box_form input_text"/>
			</div>
			
			<div id="main-button">
			<button id="btn-write" class="biz-blue flex-right btn_input">독서록 작성</button>
			</div>
		
		</form:form>
	</article>
</section>

</body>
</html>