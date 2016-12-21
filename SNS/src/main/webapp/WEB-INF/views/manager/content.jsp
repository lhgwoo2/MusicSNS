<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"
	isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
	<div id="content">
		<table class="table table-hover">
				<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>신고자</th>
				<th>신고일</th>
				<th>신고유형</th>
			    <th>처리상태</th> 
			</tr>
			</thead>
			 <tbody style="text-align: left;">
			<c:forEach items="${navi}" var="report">
				<tr>
					<td>${report.num}</td>
					<td><a href="desc?num=${report.num}" style="text-decoration: none;">${report.title}</a></td>
					<td>${report.reporter}</td>
					<td>${report.reportdate}</td>
					<td>${report.reporttype}</td>
					<td>${report.complete}</td> 
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
