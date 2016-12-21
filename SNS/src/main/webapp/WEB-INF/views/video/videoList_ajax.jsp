<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication property="name" var="secName"/>
	<c:forEach var="video" items="${videoList}" varStatus="s">
	 
		<div id="tablee" class="thumbnail" style="width: 100%; height: 100%; float: center; padding-bottom: 30px;">
			<span style="float: left"><img src="/SNS/resources/profileImage/${video.proFilFileName}" style="width: 70px; height: 70px;"> ${video.author}</span>
				<br>
			<span style="float: right; margin-left: 10px; font-size: 12px;">작성일: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${video.regdate}" /></span>
			<br><br><br>
			<h4><span style="float: left">${video.title}</span></h4>
			<span style="float: right;"></span>
			<br><br>
			<span style="float: left">${video.contents}</span>
			<br><br>
			<video width="100%" controls  loop preload="auto" >
  						<source src="/SNS/resources/video/${video.filename}" type='video/mp4' >
  					
					</video>
			<br>
			<span style="line-height: 30%;"><br></span>
			<span class="caption">
				<span style="float: left" id="mark${video.num}">
						<span id="mark${video.num}">
						
							<c:choose>
								<c:when  test="${video.markid==secName}">		
										<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="markCancel(${video.num});" >북마크 취소하기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 												 
								</c:when>
								<c:otherwise>
									<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="mark(${video.num});" >북마크</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
								</c:otherwise>		
							</c:choose>
							
						</span>
			
				</span>
				<span style="float: right;">
					<sec:authorize access="${secName==video.author}">
			            	<span>
			               	<a href="videoupdate?num=${video.num}&profile=${user.proFilFileName}"><button type="button"class="btn btn-primary" style="width: 80px; height: 40px; margin-left: 100px;">수정 <img src="/SNS/resources/markImage/edit.png" style="width: 18px; height: 18px;"></button> </a>
			            	</span>
			              	<span>
			               <button type="button"  onclick="del(${video.num},'${video.filename}');"class="btn btn-primary" style="width: 80px; height: 40px;">삭제 <img src="/SNS/resources/markImage/trash.png" style="width: 18px; height: 18px;"></button></a>
			            	</span>
				</sec:authorize>
				</span>
				</span>
				
				<span>
			<!-- 댓글 시작-->
					 <img src="/SNS/resources/markImage/reply.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="newspeedComment(${video.num})" >댓글 보기&쓰기&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					  <img src="/SNS/resources/markImage/complaint.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="openReport(${video.num})" >신고하기</a>
				</span>
			
			
			<!-- 댓글 Modal -->
  					<div class="modal fade" id="answerModal" role="dialog" style="overflow: auto; height: 100%;" >
  				  <div class="modal-dialog">
    
    				  <!-- Modal content-->
     				 <div class="modal-content">
     				 
       				 <div class="modal-header">
        				  <a name="answerTopVideo"><button type="button" class="close" data-dismiss="modal" onclick="initComment();" id="modalcancelbtn">&times;</button></a>
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
				
				
				
			</div>
		</c:forEach>
	
     
     
   
       
             
      