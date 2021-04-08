<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.io.PrintWriter" %> 
 
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>JSP 게시판 웹 사이트</title>
</head>
<body>
 
   <%
    String userID = null;
    if (session.getAttribute("userID") != null){
    	userID = (String) session.getAttribute("userID");
    }
   %>

 <nav class="navbar navbar-default">
  <div class="navbar-header">
     <button type="button" class="navbar-toggle collapsed"
      data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
      aria-expanded="false">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
   </button>  
    <a class="navbar-brand" href="main.jsp">JSP 게시판 웹사이트</a>
  </div>
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
        <li class="active"><a href="main.jsp">메인</a></li> 
        <li><a href="bbs.jsp">게시판</a></li>    
    </ul>  
    <%
     if(userID == null) {
    	 %>
   <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
         <a href="#" class="dropdown-toggle"
         data-toggle="dropdown" role="button" aria-haspopup="true"
         aria-expanded="false"> 접속하기<span class="caret"></span></a>
       <ul class="dropdown-menu">
           <li><a href="login.jsp">로그인</a></li>
           <li> <a href="join.jsp">회원가입</a> </li>
         </ul>
        </li>
    </ul>
    	 
    	 <% 
     } else {
    	%>
    	<ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
         <a href="#" class="dropdown-toggle"
         data-toggle="dropdown" role="button" aria-haspopup="true"
         aria-expanded="false"> 회원가입<span class="caret"></span></a>
       <ul class="dropdown-menu">
           <li><a href="logoutAction.jsp">로그아웃</a></li>
         </ul>
        </li>
    </ul>
    	<%  
     }
    %>    
  
  </div>
 </nav>
   <div class="container">
      <div class="jumbotron">
        <div class="container">
           <h1>웹 사이트 소개</h1>
           <p> 모든 사람은 교육을 받을 권리를 가진다 . 교육은 최소한 초등 및 기초단계에서는 무상이어야 한다. 초등교육은 의무적이어야 한다 </p>
          <p> <a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a></p>
        </div>
      </div>
   </div>
   <div class="container">
     <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2" ></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
         <img  src="images/1.jpg">
        </div>
        <div class="item">
         <img  src="images/2.jpg">
        </div>
        <div class="item">
         <img  src="images/3.jpg">
        </div>
      </div>
      <a class="left carausel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chervon-left"></span>
      </a>
          <a class="right carausel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chervon-right"></span>
      </a>
     </div>
   </div>
 <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 <script src="js/bootstrap.js"></script>
</body>
</html>