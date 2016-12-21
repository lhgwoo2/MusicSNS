<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication property="name" var="secName"/>
   <c:forEach var="recode" items="${list}" begin="0" end="2" varStatus="state">
	         <div class="col-md-4">
	         <div id="tablee" class="thumbnail" style="width: 100%; height: 100%;">
	         <span style="float: left"><img src="/SNS/resources/profileImage/${recode.proFilFileName}" style="width: 70px; height: 70px;"> ${recode.author}</span>
	         <br>
	         <span style="float: right; margin-left: 10px; font-size: 12px;">작성일: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${recode.regDate}" /></span>
	      	 <br><br><br>
	         <h4><span style="float: left">${recode.title}</span></h4>
	         <span style="float: right;"></span>
	         <br><br>
	         <span style="float: left">${recode.contents}</span>
	         <br>
	         <audio src="/SNS/resources/recode/${recode.filename}"  style="width: 100%;"  controls preload="none"></audio><br>
			</div>
			
			<hr>
	         <span class="caption" style="float: right;">
	          
	               <sec:authorize access="${secName==recode.author}">
	                        <span>
	                           <a href="/SNS/recodes/updateForm?num=${recode.num}"><button type="button"class="btn btn-primary" style="width: 80px; height: 40px;">수정 <img src="/SNS/resources/markImage/edit.png" style="width: 18px; height: 18px;"></button> </a>
	                        </span>
	                          <span>
	                        <button type="button"  onclick="del(${recode.num},'${recode.filename}');"class="btn btn-primary" style="width: 80px; height: 40px;">삭제 <img src="/SNS/resources/markImage/trash.png" style="width: 18px; height: 18px;"></button>
	                        </span>
	            </sec:authorize>
	              </span>
	              
	              
	              <span>
			
			<!-- 댓글 시작-->
					 <img src="/SNS/resources/markImage/reply.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="newspeedComment(${recode.num})" >댓글 보기&쓰기</a>
					 
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
    								  <img src="/SNS/resources/profileImage/blint.png" class="media-object" style="width:60px">							<!-- //나의 프로필 사진으로 수정해야한다. -->
    										</div>
    									<div class="media-body">
     								 <h4 class="media-heading" style="text-align: center;"> <span id="commenthead">댓글 보기 & 쓰기</span></h4>
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
			
			</span>	
			
	              
	         
	          </div>
	</c:forEach>
