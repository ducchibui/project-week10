<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login database</title>
</head>
<body>
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/project_week10" user="root"
		password="12345" />

	<sql:query dataSource="${dbsource}" var="result">
			select * from users where username= ? and password=?;
			<sql:param value="${param.username}" />
			<sql:param value="${param.password}" />
	</sql:query>
	
	<c:if test ="${not empty result }">
	<c:redirect url="user_product_list.jsp">
		<c:param name="susMsg"
			value="Congratulations ! Data inserted
            successfully." />
	</c:redirect>
	</c:if>

</body>
</html>