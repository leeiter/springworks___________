<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
