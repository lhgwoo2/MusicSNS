<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
               		<div class="media" id="${vo.num}">
  					  <div class="media-left">
    				  <img src="/SNS/resources/profileImage/${vo.filename}" class="media-object" style="width:60px">
    					</div>
    					<div class="media-body" style="text-align: left;">
     					 <h4 class="media-heading" style="font-weight:bold">${vo.author}<small style="float: right;"><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${vo.regDate}" /> 작성</small> </h4>
      					<p>${vo.contents}</p>
      					<p>
      					<a href="#answerTopRecodes" style="font-size: 12px;" onclick="resComment(${vo.commentref},${vo.num},'${vo.author}');" >답글달기</a>
      					</p>
   					 </div>
   					 <hr>
  					</div>
