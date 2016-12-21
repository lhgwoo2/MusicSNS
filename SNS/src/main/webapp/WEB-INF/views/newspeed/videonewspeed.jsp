<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication property="name" var="secName"/>
		<div id="tablee" class="thumbnail"  style="width: 50%; height: 100%; padding-bottom: 30px; margin: 0 auto;">
			<span style="float: left"><img src="/SNS/resources/profileImage/${video.proFilFileName}" style="width: 70px; height: 70px;"> ${video.author}</span>
				<br>
			<span style="float: right; margin-left: 10px; font-size: 12px;">작성일: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${video.regdate}" /></span>
		<br><br>
			<h4><span style="float: left"> ${video.title}</span></h4>
			<span style="float: right;"></span>
			<br><br>
			<span style="float: left">${video.contents}</span>
			<br>
			<video width="100%" controls  loop preload="auto">
  						<source src="/SNS/resources/video/${video.filename}" type='video/mp4' >
					</video>
			
			<hr>
			<span class="caption">
				<span style="font-size: 12px; float: left" id="mark${video.num}">
						<span id="videomark${video.num}">
							<c:choose>
								<c:when  test="${video.markid==secName}">		
									<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="markCancel(${video.num},'video');">북마크 취소하기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
								</c:when>
								<c:otherwise>
									<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;"  onclick="mark(${video.num},'video');" >북마크</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    	        
								</c:otherwise>		
							</c:choose>
							
						</span>
				</span>
				<span style="float: right;">
					<sec:authorize access="${secName==video.author}">
			            	<span>
			               	<a href="/SNS/video/videoupdate?num=${video.num}"><button type="button"class="btn btn-primary" style="width: 80px; height: 40px; margin-left: 100px;">수정 <img src="/SNS/resources/markImage/edit.png" style="width: 18px; height: 18px;"></button> </a>
			            	</span>
			              	<span>
			               <button type="button"  onclick="del(${video.num},'${video.filename}');"class="btn btn-primary" style="width: 80px; height: 40px;">삭제 <img src="/SNS/resources/markImage/trash.png" style="width: 18px; height: 18px;"></button></a>
			            	</span>
				</sec:authorize>
				</span>
				
				
				
				<span style="float: left;">
					<!-- 댓글 시작-->
					 <img src="/SNS/resources/markImage/reply.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="newspeedComment(${video.num},'video')" >댓글 보기&쓰기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					   <img src="/SNS/resources/markImage/complaint.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="openReport(${video.num},'동영상')" >신고하기</a>
				</span>
			
				</span>	
				
				
				
				
				
			</div>
     
     
   
       
             
      