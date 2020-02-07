<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<script>
$(function() {
	
	$("button.btn-save").click(function() {
		let f_name = $("#f_name").val()
		let f_tel = $("#f_tel").val()
		
		if(f_name == "") {
			alert("이름은 반드시 입력해야 합니다.")
			$("#f_name").focus()
			return false
		}
		
		if(f_tel == "") {
			alert("전화번호는 반드시 입력해야 합니다.")
			$("#f_tel").focus()
			return false
		}
		$("form").submit()
	})

})
</script>

<form:form action="${rootPath}/save" modelAttribute="friendVO">
	<div class="form-group">
		<form:input class="form-control" path="f_name" placeholder="이름" />
	</div>
	
	<div class="form-group">
		<form:input class="form-control" path="f_tel" placeholder="전화번호" />
	</div>
	
	<div class="form-group">
		<form:input class="form-control" path="f_addr" placeholder="주소" />
	</div>
	
	<div class="form-group">
		<form:input class="form-control" path="f_hobby" placeholder="취미" />
	</div>
	
	<div class="form-group">
		<form:input class="form-control" path="f_rel" placeholder="관계" />
	</div>
</form:form>

<div class="form-group text-center">
	<button class="btn btn-primary btn-save" type="button">저장</button>
</div>
