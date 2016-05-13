<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:url var="css" value="/resources/bootstrap/css"/>
<c:url var="js" value="/resources/bootstrap/js"/>
<c:url var="img" value="/resources/images"/>

<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="${css}/bootstrap.min.css" rel="stylesheet">
<link href="${css}/StyleSheet.css" rel="stylesheet">
<script src="${js}/jquery-2.2.3.js"></script>
<script src="${js}/angular.min.js"></script>
<script src="${js}/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>
<style type="text/css">

.marginadded{

margin: 0px 30px 0px 0px; 

}

</style> 
</head>
<body>
    <div class="container">
<!-- NAVBAR
================================================== -->

    <div class="navbar-wrapper">
     <div class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <img src="${img}/logo.png" style="margin:0px" "175px" height="50px"/>              
            </div>
            <div class="navbar-collapse collapse navbar-x pull-right">
              <ul class="nav navbar-nav">
                <li><a href="${session.getContextPath()}/farmfresh/">Home</a></li>
                <li>
                  <a href="aboutus">About Us</a>
              </li>
              <li>
                  <a href="contactus">Contact Us</a>
              </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="products">Dairy Products</a></li>
                     <li class="divider"></li>
                    
                    <li><a href="products">Processed</a></li>
                     <li class="divider"></li>
                    
                    <li><a href="products">Herbs</a></li>
                    <li class="divider"></li>                                     
                  </ul>
                </li>
              
              <li>
                  <a href="register">Register Here</a>
              </li>
              
              <li class="marginadded">
                  <a href="login">Login</a>
              </li>  
              <li class="marginadded">
                  <a href="adminpage">Admin Login</a>
              </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>


