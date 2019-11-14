<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account administration</title>
</head>
<body>

	<form method="post" action="administration.jsp">
		Enter user name: <input type="text" name="username">
		<p></p>
		<input type="submit" value="Search">
	</form>
	<c:if test ="${not empty param.username }">
		<sql:setDataSource var="dbsource1" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/project_week10" user="root"
		password="12345" />
		<sql:query dataSource="${dbsource1}" var="result1">
            SELECT * from users where username=?;
            <sql:param value="${param.username}" />
	</sql:query>
	<c:if test="${result >=1 }">
		<table border="1" width="40%">
			<caption>User account page</caption>
			<tr>
				<th>user name</th>
				<th>password</th>
				<th>phone</th>
				<th>email</th>
				<th>address</th>
				<th>name</th>
				<th>Role</th>
			</tr>
			<c:forEach var="row" items="${result1.rows}">
				<tr>
					<td><c:out value="${row.username}" /></td>
					<td><c:out value="${row.password}" /></td>
					<td><c:out value="${row.phone}" /></td>
					<td><c:out value="${row.email}" /></td>
					<td><c:out value="${row.address}" /></td>
					<td><c:out value="${row.address}" /></td>
					<td><c:out value="${row.role}" /></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	</c:if>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/project_week10" user="root"
		password="12345" />
	<sql:query dataSource="${dbsource}" var="result">
            SELECT * from users;
        </sql:query>
	<table border="1" width="40%">
		<caption>User account page</caption>
		<tr>
			<th>user name</th>
			<th>password</th>
			<th>phone</th>
			<th>email</th>
			<th>address</th>
			<th>name</th>
			<th>Role</th>
		</tr>
		<c:forEach var="row" items="${result.rows}">
			<tr>
				<td><c:out value="${row.username}" /></td>
				<td><c:out value="${row.password}" /></td>
				<td><c:out value="${row.phone}" /></td>
				<td><c:out value="${row.email}" /></td>
				<td><c:out value="${row.address}" /></td>
				<td><c:out value="${row.address}" /></td>
				<td><c:out value="${row.role}" /></td>
			</tr>
		</c:forEach>
	</table>
	<a href="login.jsp">Go Home</a>

</body>
</html>