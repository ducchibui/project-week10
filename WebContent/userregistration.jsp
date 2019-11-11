<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User registration page</title>
</head>
<body>
	<form method="post" action="registrationdb.jsp">
		User name: <input type="text" name="username">
		<p></p>
		Password: <input type="password" name="password">
		<p></p>
		Cell phone: <input type="text" name="cellphone">
		<p></p>
		Address: <input type="text" name="address">
		<p></p>
		<input type="submit" value="Register">
	</form>

	<%--Redirect to product registration page if register successfully else display error message --%>
	<font color="red"><c:if test="${not empty param.errMsg}">
            <c:out value="${param.errMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
        <font color="green"><c:if test="${not empty param.susMsg}">
            <c:out value="${param.susMsg}" />
            <a href="index.jsp">Go Back</a>
        </c:if></font>
</body>
</html>