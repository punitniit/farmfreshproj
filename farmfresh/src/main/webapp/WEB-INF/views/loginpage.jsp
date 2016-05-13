<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>

<form action="perform_login" method="post">
<label>Enter Username</label><input type="text" name="username"/>
<label>Enter password</label><input type="password" name="password"/>
<input type="submit" value="login">
</form>     
       
<%@include file="footer.jsp"%>