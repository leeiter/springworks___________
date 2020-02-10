<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
$(function() {

	var contextCallBack = function(key, options) {
	    
	    if(key == 'edit') {
	       let f_seq = $(this).attr("data-seq");
	       document.location.href = "${rootPath}/update/" + f_seq
	       alert("수정할 번호 : " + $(this).attr("data-seq"))
	    }
	       
	    if(key == 'delete') {
	       if(confirm("친구 정보를 삭제할까요?")) {
	          let f_seq = $(this).attr("data-seq");
	          document.location.href = "${rootPath}/delete/" + f_seq
	          alert("삭제할 번호 : " + $(this).attr("data-seq"))
	       }
	    }

	 }

	 $.contextMenu({
	    selector : '.list',
	    callback : contextCallBack,
	    items : {
	       'edit' : {name : '수정', icon : 'edit'},
	       'delete' : {name : '삭제', icon : 'delete'}
	    }
	 })
	
	 $("#btn-write").click(function() {
		 document.location.href = "${rootPath}/input"
	})
	
})


</script>

<div class="container">   
  <table class="table table-dark table-striped">
      <tr>
        <th>NO</th>
        <th>NAME</th>
        <th>TEL</th>
        <th>ADDR</th>
        <th>HOBBY</th>
        <th>REL</th>
      </tr>
      <c:choose>
      	<c:when test="${empty FRIEND_LIST}">
      		<tr><td colspan="6">친구 목록이 없습니다.</td></tr>
      	</c:when>
      	<c:otherwise>
      		<c:forEach var="VO" items="${FRIEND_LIST}" varStatus="index">
      			<tr data-seq="${VO.f_seq}" class="list">
      				<td>${VO.f_seq}</td>
      				<td>${VO.f_name}</td>
      				<td>${VO.f_tel}</td>
      				<td>${VO.f_addr}</td>
      				<td>${VO.f_hobby}</td>
      				<td>${VO.f_rel}</td>
      			</tr>
      		</c:forEach>
      	</c:otherwise>
      </c:choose>
  </table>
</div>

<div class="text-center">
	<button type="button" id="btn-write" class="btn btn-primary">추가</button>
</div>
