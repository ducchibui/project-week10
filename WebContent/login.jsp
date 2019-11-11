<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		user name: <input type="text" name="username">
		<p></p>
		password: <input type="password" name="password">
		<p></p>
		<input type="submit" value="Login">
	</form>
	
	<%--Redirect to the user registration page or display error message--%>
	
	<c:if test ="">
		<c:redirect></c:redirect>
	</c:if>
</body>
</html>