<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List all user in the system</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
<header class="d-flex align-self-center"
		style="background-color: cornsilk">
		<div class="container">
			<img src="images/sharesquare.png">
		</div>
	</header>
<nav class="navbar bg-dark navbar-dark navbar-expand-md mb-5">
    <div class="container">
        <button class="navbar-toggler" type="button"
                data-toggle="collapse" data-target="#myToggleNav"
                aria-expanded="false" aria-label="Toggle Navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="myToggleNav">
            <div class="navbar-nav">
                <a class="nav-item nav-link " href="all_user_list.jsp">List Users</a>
                <a class="nav-item nav-link " href="product_list.jsp">List Product</a>
                <a class="nav-item nav-link " href="claim_list.jsp">List Claim</a>
                <a class="nav-item nav-link " href="logout.jsp">Log out</a>
            </div><!--navbar nav-->
        </div><!--collapse-->
    </div><!--container-->
</nav><!--navbar--->
	<sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/project_week10" user="root"
		password="12345" />
	<div class="container">
		<form method="post">
			<table class="table">
				<tr>
					<td>Search user name</td>
					<td><input type="text" name="username"></td>
					<td><input type="submit" value="Search"></td>
			</table>
		</form>
	</div>
	<div class="container">
		<c:choose>
			<c:when test="${not empty param.username }">
				<sql:query dataSource="${dbsource}" var="result">
            SELECT * from users where username = ?;
            <sql:param value="${param.username}" />
				</sql:query>
				<fieldset>
					<table class="table">
						<legend>User account page</legend>
						<thead class="thead-light">
							<tr class="table-primary">
								<th scope="col">user name</th>
								<th scope="col">password</th>
								<th scope="col">phone</th>
								<th scope="col">email</th>
								<th scope="col">address</th>
								<th scope="col">name</th>
								<th scope="col">Role</th>
							</tr>
						</thead>
						<c:forEach var="row" items="${result.rows}">
							<tr class="table-primary">
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
				</fieldset>
			</c:when>
			<c:otherwise>
				<sql:query dataSource="${dbsource}" var="result">
            SELECT * from users;
        		</sql:query>
				<fieldset>
					<table class="table">
						<legend>User account page</legend>
						<thead class="thead-light">
							<tr class="table-primary">
								<th scope="col">user name</th>
								<th scope="col">password</th>
								<th scope="col">phone</th>
								<th scope="col">email</th>
								<th scope="col">address</th>
								<th scope="col">name</th>
								<th scope="col">Role</th>
							</tr>
						</thead>
						<c:forEach var="row" items="${result.rows}">
							<tr class="table-primary">
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
				</fieldset>
			</c:otherwise>
		</c:choose>
	</div>
	<script src="js/jquery.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>