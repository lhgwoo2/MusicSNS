<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<sec:authentication property="name" var="secName"/>
	<div id="content">
			<table class="table table-hover" style="min-width:900px;">
			<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성일</th>
				<th>작성자</th>
			</tr>
			</thead>
			<tbody style="text-align: left;">
			<c:forEach items="${navi}" var="emp">
				<tr>
					<td>${emp.num}</td>
					<td><a href="desc?num=${emp.num}" style="text-decoration: none;">${emp.title}</a></td>
					<td>${emp.regdate}</td>
					<td>${emp.author}</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>