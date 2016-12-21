<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  isELIgnored="false"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
  <script src="<c:url value="/resources/jquery.bootpag.min.js"/>"></script>
<title>홍보 리스트</title>
<style>
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 1200px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 1100px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
    }
</style>
  
<script type="text/javascript">

function add(ref) {
	var comstr = $('#comstr').val();
	if(comstr==null){
		alert("댓글을 입력해 주세요!");
		return;
	}
    var serialData = {};
    serialData.ref = ref; 
    serialData.comstr = comstr;
	$.ajax({
	    url: 'commentadd',
	     data:serialData, 
	    type:'post', //get , post 둘중하나
	    dataType: 'html',
	    success: function(html) {
	        $('#comment').text(html);
	    }
	}); 
	
}

</script>
</head>
<body>
<div id="listpage">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="main">MusicSocial</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li>Notice</li>
        <li class="active">Promotion</li>
        <li>Gallery</li>
        <li>Question</li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
       <li>
      </li>
      </ul>
    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
      <p><a href="#">Link</a></p>
    </div>

     
<!-- 게시글 쓰기 영역 -->
<div id="comment">
	<c:forEach var="c" items="${comment}" varStatus="s">
		<div>${c.author}</div>
		<div><fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${c.regdate}" />${c.regdate}</div>
		<div>${c.contents}</div>
	</c:forEach>
</div>
<input id="comstr" placeholder="댓글을 입력해 주세요"><button type="button" onclick="add(${ref});"></button>


<!-- 게시글 쓰기 영역 끝-->




    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>


</body>
</html>