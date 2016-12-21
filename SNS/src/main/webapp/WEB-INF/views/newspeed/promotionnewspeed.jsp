<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<sec:authentication property="name" var="secName"/>


      			<div class="thumbnail"  style="width: 50%; height: 100%; padding-bottom: 30px; margin: 0 auto;">
      			<span style="float: left"><img src="/SNS/resources/profileImage/${vo.profilfile}" style="width: 70px; height: 70px;"> ${vo.author}</span> 
      			<br>
      			<span style="float: right; margin-right: 0 auto; margin-top: 15px; font-size: 12px;">공연시작일:<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${vo.openingday}" /></span>
      			<br><br>
      			<h4><span style="float: left"> ${vo.title}</span></h4>
      			<p><span style="float: right;"><a href="<c:url value='/promotion/desc?num=${vo.num}'/>">상세보기</a></span></p>
      			
       			 <br><br>	
       			 	 <img src="/SNS/resources/promotionListImage/${vo.filename}" alt="Pulpit Rock" style="width:100%; cursor: pointer;" onclick="doImgPop('/SNS/resources/promotionListImage/${vo.filename}')">
       			   	<span style="line-height: 30%;"><br></span>
	       			   	<span style="float: left; margin-left: 10px; font-size: 12px;">작성일:<fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${vo.regdate}" /></span>

       			   	<hr>
       			   	<span class="caption" >
       			   	
         		 		<span style="font-size: 12px; float: left;"id="mark${vo.num}">
							<span id="promotionmark${vo.num}">						
								<c:choose>
									<c:when  test="${vo.markid==secName}">
											<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="markCancel(${vo.num},'promotion');" >북마크 취소하기</a>  
									</c:when>
									<c:otherwise>						
											<img src="/SNS/resources/thumbnailImage/bookmark.jpg" style="width: 20px; height: 20px;"><a style="cursor: pointer;" onclick="mark(${vo.num},'promotion');" >북마크</a>     	        
									</c:otherwise>		
								</c:choose>					
							</span>
						</span>
						
         		 	</span>
     	 		</div>

    		