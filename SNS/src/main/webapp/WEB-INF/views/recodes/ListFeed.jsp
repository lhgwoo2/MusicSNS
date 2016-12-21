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
			<span style="float: right; margin-left: 10px; font-size: 12px;">�ۼ���: <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${recode.regDate}" /></span>
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
							<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="markCancel(${recode.num});" >�ϸ�ũ ����ϱ�</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 																																																						  
						</c:when>
						<c:otherwise>
							<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="mark(${recode.num});" >�ϸ�ũ</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</c:otherwise>		
					</c:choose>
				</span>
				<span style="float: right;">
				<sec:authorize access="${secName==recode.author}">
					<a href="updateForm?num=${recode.num}">
						<button type="button" class="btn btn-primary" style="width: 80px; height: 40px;">���� <img src="/SNS/resources/markImage/edit.png" style="width: 18px; height: 18px; "></button>
					</a>
						<button type="button" onclick="del(${recode.num},'${recode.filename}');" class="btn btn-primary" style="width: 80px; height: 40px; ">���� <img src="/SNS/resources/markImage/trash.png" style="width: 18px; height: 18px;"></button>
					</sec:authorize>
				</span>	
			</span>	
			<span>
			
			<!-- ��� ����-->
					 <img src="/SNS/resources/markImage/reply.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="newspeedComment(${recode.num})" >��� ����&����&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>
					  <img src="/SNS/resources/markImage/complaint.png" style="width: 20px; height: 20px; float: left;"><a style="cursor: pointer; float: left;" data-toggle="modal" onclick="openReport(${recode.num})" >�Ű��ϱ�</a>
			</span>			
			
			 
					 <!-- ��� Modal -->
  					<div class="modal fade" id="answerModal" role="dialog" style="overflow: auto; height: 100%;" >
  				  <div class="modal-dialog">
    
    				  <!-- Modal content-->
     				 <div class="modal-content">
     				 
       				 <div class="modal-header">
        				  <a name="answerTop"><button type="button" class="close" data-dismiss="modal" onclick="initComment();" id="modalcancelbtn">&times;</button></a>
       				   <h4 class="modal-title">
         				 	<div class="media">
  									  <div class="media-left">
    								  <img src="/SNS/resources/profileImage/${user.proFilFileName}" class="media-object" style="width:60px">							<!-- //���� ������ �������� �����ؾ��Ѵ�. -->
    										</div>
    									<div class="media-body">
     								 <h4 class="media-heading"> <span id="commenthead">��� ���� & ����</span></h4>
      									<p><input type="text" class="form-control" placeholder="����� �Է��ϼ���" id="chatInput" onkeypress="eventEnter(event);"></p>
   									 </div>
  									</div>
         				 </h4>
       				 </div>
       				 <div class="modal-body">
        				<!-- ��۳��� jQuery�� �߰� �κ� -->
        				<span id="postsComment">
               				   
         				  </span>
        				   <span id="createmore"><button type="button" class="btn btn-default" onclick="moreComment();" id="morebutton">������</button></span>
       					 </div>
      					  <p id="loading">
      				      <!-- <img src="images/loading.gif" alt="Loading��" /> -->
      					  </p> 
    				
    				
    				</div>
 				 </div>
 				 </div>
					<!-- ��� ��-->
					
					
					
					
					
					  <!-- �Ű��ϱ� -->
     				<div class="modal fade" id="reportModal" role="dialog" >
    				<div class="modal-dialog">
     				 <!-- Modal content-->
      				<div class="modal-content">
       				 <div class="modal-header">
       			   <button type="button" class="close" data-dismiss="modal">&times;</button>
          			<h4 class="modal-title">�Ű� Ȯ��</h4>
       			 </div>

        			<div class="modal-body">
        		  <p><input type="text" class="form-control" placeholder="�Ű� ������ �Է��� �ּ���" id="reportcontents"></p>
        		  <p>���� �Ű��Ͻðڽ��ϱ�?</p>
        			</div>
    			    <div class="modal-footer">
       				 <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="reportVideoOK()">�� ��</button>
         			 <button type="button" id="reportCancel" class="btn btn-primary" data-dismiss="modal" onclick="cancelReport()">Close</button>   
      			  </div>
  		   		 </div>
  			  </div>
 			 </div>
					
					
					
					
			
			
				 <br><br>	
			<hr>

		</c:forEach>
		
	</div>