<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<c:url var="bcss" value="/resources/bootstrap/css/"/>
<c:url var="bjs" value="/resources/bootstrap/js/"/>
<c:url var="imgloc" value="/resources/images/"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<link rel="stylesheet" href="${bcss}bootstrap.min.css"/>
<link rel="stylesheet" href="${bjs}bootstrap-theme.min.css"/>
<style>
.navbar-inverse{
 background-color:F78FC6
 }
 
.navbar-inverse .navbar-brand,
.navbar-inverse .navbar-brand:hover,
.navbar-inverse .navbar-brand:focus {
    color: #FFF;
}

.navbar-inverse .navbar-nav > li > a {
    color: #FFF;
}

.navbar-inverse .navbar-nav > li > a:hover,
.navbar-inverse .navbar-nav > li > a:focus {
    background-color: #AA0000;
}

.navbar-inverse .navbar-nav > .active > a,
.navbar-inverse .navbar-nav > .active > a:hover,
.navbar-inverse .navbar-nav > .active > a:focus {
    color: #FFF;
    background-color: #AA0000;
}

.navbar-inverse .navbar-text {
    color: #FFF;
}

.navbar-inverse .navbar-toggle {
    border-color: #AA0000;
}

.navbar-inverse .navbar-toggle:hover,
.navbar-inverse .navbar-toggle:focus {
    background-color: #EC297B;
}

.navbar-inverse .navbar-toggle .icon-bar {
    background-color: #FFF;
}

.full {
    width: 100%;	
}
.gap {
	height: 30px;
	width: 100%;
	clear: both;
	display: block;
}
.footer {
	background: #EDEFF1;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid #CCCCCC;
	border-top: 1px solid #DDDDDD;
}
.footer p {
	margin: 0;
}
.footer img {
	max-width: 100%;
}
.footer h3 {
	border-bottom: 1px solid #BAC1C8;
	color: #54697E;
	font-size: 18px;
	font-weight: 600;
	line-height: 27px;
	padding: 40px 0 10px;
	text-transform: uppercase;
}
.footer ul {
	font-size: 13px;
	list-style-type: none;
	margin-left: 0;
	padding-left: 0;
	margin-top: 15px;
	color: #7F8C8D;
}
.footer ul li a {
	padding: 0 0 5px 0;
	display: block;
}
.footer a {
	color: #78828D
}
.supportLi h4 {
	font-size: 20px;
	font-weight: lighter;
	line-height: normal;
	margin-bottom: 0 !important;
	padding-bottom: 0;
}
.newsletter-box input#appendedInputButton {
	background: #FFFFFF;
	display: inline-block;
	float: left;
	height: 30px;
	clear: both;
	width: 100%;
}
.newsletter-box .btn {
	border: medium none;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
	-ms-border-radius: 3px;
	border-radius: 3px;
	display: inline-block;
	height: 40px;
	padding: 0;
	width: 100%;
	color: #fff;
}
.newsletter-box {
	overflow: hidden;
}
.bg-gray {
	background-image: -moz-linear-gradient(center bottom, #BBBBBB 0%, #F0F0F0 100%);
	box-shadow: 0 1px 0 #B4B3B3;
}
.social li {
	background: none repeat scroll 0 0 #B5B5B5;
	border: 2px solid #B5B5B5;
	-webkit-border-radius: 50%;
	-moz-border-radius: 50%;
	-o-border-radius: 50%;
	-ms-border-radius: 50%;
	border-radius: 50%;
	float: left;
	height: 36px;
	line-height: 36px;
	margin: 0 8px 0 0;
	padding: 0;
	text-align: center;
	width: 36px;
	transition: all 0.5s ease 0s;
	-moz-transition: all 0.5s ease 0s;
	-webkit-transition: all 0.5s ease 0s;
	-ms-transition: all 0.5s ease 0s;
	-o-transition: all 0.5s ease 0s;
}
.social li:hover {
	transform: scale(1.15) rotate(360deg);
	-webkit-transform: scale(1.1) rotate(360deg);
	-moz-transform: scale(1.1) rotate(360deg);
	-ms-transform: scale(1.1) rotate(360deg);
	-o-transform: scale(1.1) rotate(360deg);
}
.social li a {
	color: #EDEFF1;
}
.social li:hover {
	border: 2px solid #2c3e50;
	background: #2c3e50;
}
.social li a i {
	font-size: 16px;
	margin: 0 0 0 5px;
	color: #EDEFF1 !important;
}
.footer-bottom {
	background: #E3E3E3;
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}
.footer-bottom p.pull-left {
	padding-top: 6px;
}
.payments {
	font-size: 1.5em;	
}

</style>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar" aria-expanded="false">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/"><img class="img-responsive" src="${imgloc}companylogo.jpg"></a>
    </div>
    
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav nav-left">
          <li class="active"><a href="#section1">TOP WEAR</a></li>
          <li><a href="#section2">BOTTOM WEAR</a></li>
          <li><a href="#section3">WINTER WEAR</a></li>
          <li><a href="#section4">DRAPES</a></li>
          <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" href="#">ACCESSORIES <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#section51">Bags</a></li>
              <li><a href="#section52">Ear Ring</a></li>
              <li><a href="#section32">Watches</a></li>
            </ul>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
					<li><a href="register"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
	   </ul>
      </div>
    </div>
  </div>
</nav> 
<br>
<div class="container central">
				 <h2 class="add-user-heading">REGISTRATION PAGE</h2>
				<form:form action="register" commandName="user" modelAttribute="user">
			
		<div class="row">
			<div class=col-xs-6><form:label path="name"><spring:message text="NAME"/></form:label></div>
						<div class=col-xs-6><form:input path="name"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="password"><spring:message text="BRAND"/></form:label></div>
			<div class=col-xs-6><form:input path="password"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="gender"><spring:message text="CATEGORY"/></form:label></div>
			<div class=col-xs-6><form:input path="gender"/></div>
		</div>
			<div class="row">
			<div class=col-xs-6><form:label path="email"><spring:message text="DESCRIPTION"/></form:label></div>
			<div class=col-xs-6><form:input path="email"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><form:label path="address"><spring:message text="PRICE"/></form:label></div>
			<div class=col-xs-6><form:input path="address"/></div>
		</div>
		<div class="row">
			<div class=col-xs-6><input type="submit" value="<spring:message text="ADD USER"/>"></div>
			
		</div>
	
</form:form>
</div>









<script src="${bjs}bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
</body>
</html>