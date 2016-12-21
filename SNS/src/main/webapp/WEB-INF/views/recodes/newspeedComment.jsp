<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 <c:forEach items="${commentList}" var="vo" varStatus="status">
          	<div class="media" id="${vo.num}">
  					  <div class="media-left">
    				<img src="/SNS/resources/profileImage/${vo.filename}" class="media-object" style="width:60px">
    						</div>
    						<div class="media-body" style="text-align: left;">
     					 <h4 class="media-heading" style="font-weight:bold">${vo.author}<small style="float: right;"><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${vo.regDate}" /> �ۼ�</small> </h4>
      					<p>${vo.contents}</p>
      					<p>
      					<a href="#answerTopRecodes" style="font-size: 12px;" onclick="resComment(${vo.commentref},${vo.num},'${vo.author}');" >��۴ޱ�</a>
      					</p>
   						</div>
   					 <hr>
  					</div>
  </c:forEach>