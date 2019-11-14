<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User registration database</title>
</head>
<body>

	<c:if
		test="${ empty param.username or empty param.password
	or empty param.phone or empty param.email or empty param.address
	or param.name or param.role}">
		<c:redirect url="userregistration.jsp">
			<c:param name="errMsg" value="Please Enter all field to register" />
		</c:redirect>

	</c:if>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/project_week10" user="root"
		password="12345" />


	<sql:update dataSource="${dbsource}" var="result">
            INSERT INTO users(username, password,phone,email, address, name,role)
             VALUES (?,?,?,?,?,?,?);
            <sql:param value="${param.username}" />
		<sql:param value="${param.password}" />
		<sql:param value="${param.phone}" />
		<sql:param value="${param.email}" />
		<sql:param value="${param.address}" />
		<sql:param value="${param.name}" />
		<sql:param value="${param.role}" />
	</sql:update>
	<c:if test="${result>=1}">
		<font size="5" color='green'> Congratulations ! User registered
			successfully.</font>
		<c:redirect url="productregistration.jsp">
			<c:param name="susMsg"
				value="Congratulations ! Data inserted
            successfully." />
		</c:redirect>
	</c:if>
</body>
</html>