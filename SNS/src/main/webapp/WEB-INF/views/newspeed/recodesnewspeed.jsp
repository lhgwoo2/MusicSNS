<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication property="name" var="secName"/>

	<div class="thumbnail"  style="width: 50%; height: 100%; padding-bottom: 30px; margin: 0 auto;">
	
			<span style="float: left"><img src="/SNS/resources/profileImage/${recode.proFilFileName}" style="width: 70px; height: 70px;"> ${recode.author}</span>
			<br>
			<span style="float: right; margin-left: 10px; font-size: 12px;">작성일: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${recode.regdate}" /></span>
			<br><br>
			<h4><span style="float: left">${recode.title}</span></h4>
			<span style="float: right;"></span>
			<br><br>
			<span style="float: left">${recode.contents}</span>
			<br><br>
			<audio src="/SNS/resources/recode/${recode.filename}" controls preload="auto" style="width: 100%"></audio>
			
			
			<hr>
			<span class="caption">
				<span style="font-size: 12px; float: left" id="recodemark${recode.num}">
					<c:choose>
						<c:when  test="${recode.markid==secName}">		
							<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="markCancel(${recode.num},'recode');">북마크 취소하기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;																																																						  
						</c:when>
						<c:otherwise>
							<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="mark(${recode.num},'recode');">북마크</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</c:otherwise>		
					</c:choose>
				</span>
				<span style="float: right;">
				<sec:authorize access="${secName==recode.author}">
					<a href="/SNS/recodes/updateForm?num=${recode.num}">
						<button type="button" class="btn btn-primary" style="width: 80px; height: 40px;">수정 <img src="/SNS/resources/markImage/edit.png" style="width: 18px; height: 18px; "></button>
					</a>
						<button type="button"  onclick="redel(${recode.num},'${recode.filename}');" class="btn btn-primary" style="width: 80px; height: 40px; ">삭제 <img src="/SNS/resources/markImage/trash.png" style="width: 18px; height: 18px;"></button>
					</sec:authorize>
				</span>	
				
				    
			
				<span style="float: left;">
					<!-- 댓글 시작-->
					 <img src="/SNS/resources/markImage/reply.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="newspeedComment(${recode.num},'recodes')" >댓글 보기&쓰기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					   <img src="/SNS/resources/markImage/complaint.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="openReport(${recode.num},'녹음')" >신고하기</a>
				</span>
			
				</span>	
				
				
				
				
				
			
		
	</div>