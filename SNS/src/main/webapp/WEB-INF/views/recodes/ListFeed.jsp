<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication property="name" var="secName"/>

	<div class="thumbnail" style="width: 100%; height: 100%; float: center;">
	
		<c:forEach var="recode" items="${list}" varStatus="s">
			<span style="float: left"><img src="/SNS/resources/profileImage/${recode.proFilFileName}" style="width: 60px; height: 60px;"> ${recode.author}</span>
			<br>
			<span style="float: right; margin-left: 10px; font-size: 12px;">작성일: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${recode.regDate}" /></span>
			<br><br>
			<h4><span style="float: left">${recode.title}</span></h4>
			<span style="float: right;"></span>
			<br><br>
			<span style="float: left">${recode.contents}</span>
			<br><br>
			<audio src="/SNS/resources/recode/${recode.filename}" controls preload="none" style="width: 100%"></audio>
			<br>
			<span style="line-height: 30%;"><br></span>
			<span class="caption">
				<span style="float: left" id="mark${recode.num}">
					<c:choose>
						<c:when test="${recode.markid==secName}">		
							<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="markCancel(${recode.num});" >북마크 취소하기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 																																																						  
						</c:when>
						<c:otherwise>
							<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="mark(${recode.num});" >북마크</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</c:otherwise>		
					</c:choose>
				</span>
				<span style="float: right;">
				<sec:authorize access="${secName==recode.author}">
					<a href="updateForm?num=${recode.num}">
						<button type="button" class="btn btn-primary" style="width: 80px; height: 40px;">수정 <img src="/SNS/resources/markImage/edit.png" style="width: 18px; height: 18px; "></button>
					</a>
						<button type="button" onclick="del(${recode.num},'${recode.filename}');" class="btn btn-primary" style="width: 80px; height: 40px; ">삭제 <img src="/SNS/resources/markImage/trash.png" style="width: 18px; height: 18px;"></button>
					</sec:authorize>
				</span>	
			</span>	
			<span>
			
			<!-- 댓글 시작-->
					 <img src="/SNS/resources/markImage/reply.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="newspeedComment(${recode.num})" >댓글 보기&쓰기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					  <img src="/SNS/resources/markImage/complaint.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="openReport(${recode.num})" >신고하기</a>
			</span>			
			
			 
					 <!-- 댓글 Modal -->
  					<div class="modal fade" id="answerModal" role="dialog" style="overflow: auto; height: 100%;" >
  				  <div class="modal-dialog">
    
    				  <!-- Modal content-->
     				 <div class="modal-content">
     				 
       				 <div class="modal-header">
        				  <a name="answerTop"><button type="button" class="close" data-dismiss="modal" onclick="initComment();" id="modalcancelbtn">&times;</button></a>
       				   <h4 class="modal-title">
         				 	<div class="media">
  									  <div class="media-left">
    								  <img src="/SNS/resources/profileImage/${user.proFilFileName}" class="media-object" style="width:60px">							<!-- //나의 프로필 사진으로 수정해야한다. -->
    										</div>
    									<div class="media-body">
     								 <h4 class="media-heading"> <span id="commenthead">댓글 보기 & 쓰기</span></h4>
      									<p><input type="text" class="form-control" placeholder="댓글을 입력하세요" id="chatInput" onkeypress="eventEnter(event);"></p>
   									 </div>
  									</div>
         				 </h4>
       				 </div>
       				 <div class="modal-body">
        				<!-- 댓글내용 jQuery로 추가 부분 -->
        				<span id="postsComment">
               				   
         				  </span>
        				   <span id="createmore"><button type="button" class="btn btn-default" onclick="moreComment();" id="morebutton">더보기</button></span>
       					 </div>
      					  <p id="loading">
      				      <!-- <img src="images/loading.gif" alt="Loading…" /> -->
      					  </p> 
    				
    				
    				</div>
 				 </div>
 				 </div>
					<!-- 댓글 끝-->
					
					
					
					
					
					  <!-- 신고하기 -->
     				<div class="modal fade" id="reportModal" role="dialog" >
    				<div class="modal-dialog">
     				 <!-- Modal content-->
      				<div class="modal-content">
       				 <div class="modal-header">
       			   <button type="button" class="close" data-dismiss="modal">&times;</button>
          			<h4 class="modal-title">신고 확인</h4>
       			 </div>

        			<div class="modal-body">
        		  <p><input type="text" class="form-control" placeholder="신고 사유를 입력해 주세요" id="reportcontents"></p>
        		  <p>정말 신고하시겠습니까?</p>
        			</div>
    			    <div class="modal-footer">
       				 <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="reportVideoOK()">저 장</button>
         			 <button type="button" id="reportCancel" class="btn btn-primary" data-dismiss="modal" onclick="cancelReport()">Close</button>   
      			  </div>
  		   		 </div>
  			  </div>
 			 </div>
					
					
					
					
			
			
				 <br><br>	
			<hr>

		</c:forEach>
		
	</div>