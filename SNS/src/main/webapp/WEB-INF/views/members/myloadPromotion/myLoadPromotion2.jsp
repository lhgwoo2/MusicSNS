<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication property="name" var="secName"/>
       <c:forEach var="vo" items="${list}" begin="0" end="2" varStatus="state">
          <div class="col-md-4">
               <div class="thumbnail">
               <p><img src="/SNS/resources/profileImage/${vo.proFilFileName}" style="width: 50px; height: 50px;"> 
               <span>${vo.author}</span>
               <span style="float: right;">
               <span style="float: right; margin-right: 0 auto; margin-top: 15px; font-size: 12px;">공연시작일:<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${vo.openingday}" /></span>
               </span>
               </p>
               <p>${vo.title}<span style="float: right;"><a href="<c:url value='/promotion/desc?num=${vo.num}'/>">상세보기</a></span></p>
                     <img src="/SNS/resources/promotionListImage/${vo.filename}" alt="Pulpit Rock" style="width:100%">
                      <span style="line-height: 30%;"><br></span>
                         <span style="float: left; margin-left: 10px; font-size: 12px;">작성일:<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${vo.regDate}" /></span>
                      <hr>

               </div>
          </div>
      </c:forEach>