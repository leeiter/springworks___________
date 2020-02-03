<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
$(function() {
	
	$("button").click(function() {
		
		let btn_id = $(this).attr("id")
		let url = "${rootPath}/ems/"
		
		if(btn_id == "btn-update") {
			url += "update/${emailVO.emsSeq}"
		} else if(btn_id == "btn-delete") {
			url += "delete/${emailVO.emsSeq}"
		} else if(btn_id == "btn-list") {
			url += "list"
		}
		document.location.href = url
		
	})
	
})
</script>

<table>
	<tr>
		<th>받는 E-mail</th><td>${emailVO.to_email}</td>
		<th>받는 사람이름</th><td>${emailVO.to_name}</td>
	</tr>

	<tr>
		<th>보내는 E-mail</th><td>${emailVO.fromEmail}</td>
		<th>보내는 사람이름</th><td>${emailVO.fromName}</td>
	</tr>

	<tr>
		<th>보낸날짜</th><td>${emailVO.sendDate}</td>
		<th>보낸시각</th><td>${emailVO.sendTime}</td>
	</tr>
	
	<tr>
		<th>제목</th><td>${emailVO.subject}</td>
	</tr>
	<tr>
		<th>내용</th><td>${emailVO.content}</td>
	</tr>
</table>

<article>
	<button id="btn-update" type="button" class="flex-right biz-blue">수정</button>
	<button id="btn-delete" type="button" class="biz-red">삭제</button>
	<button id="btn-list" type="button" class="biz-orange">리스트보기</button>
</article>
