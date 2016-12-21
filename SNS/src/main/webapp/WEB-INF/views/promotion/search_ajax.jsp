<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   
<c:choose>
   <c:when test="${ok}">      
   <tr>
         <th>작성자</th><th>제목</th><th >공연 시작</th>
      </tr>
      <c:forEach var="p" items="${list}" varStatus="s">
      <tr>
         <td>
         ${p.author}  
         </td>   
         <td style="max-width: 300px;">
         ${p.title}
         </td>   
         <td>
         <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${p.openingday}" />
         </td>   
      </tr>
      </c:forEach>   
   </c:when>
   <c:otherwise>
      게시물이 없습니다.              
   </c:otherwise>      
</c:choose>   
      