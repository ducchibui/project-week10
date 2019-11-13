<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product registration page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header class="d-flex align-self-center"
		style="background-color: cornsilk">
		<div class="container">
			<img src="images/sharesquare.png">
		</div>
	</header>s
	<nav class="navbar bg-dark navbar-dark navbar-expand-md mb-5">
		<div class="container">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#myToggleNav" aria-expanded="false"
				aria-label="Toggle Navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="myToggleNav">
				<div class="navbar-nav">
					<a class="nav-item nav-link " href="register_product.jsp">Register
						New Product</a> <a class="nav-item nav-link " href="add_claim.jsp">Add
						new Claim</a> <a class="nav-item nav-link " href="logout.jsp">Log
						out</a>
				</div>
				<!--navbar nav-->
			</div>
			<!--collapse-->
		</div>
		<!--container-->
	</nav>
	<!--navbar--->
	<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/project_week10?serverTimezone=EST5EDT"
		user="root" password="12345"></sql:setDataSource>
	<sql:query dataSource="${dbCon}" var="result">
			select * from Products;
		</sql:query>
	<div class="container">
		<fieldset>
			<legend>Register Product</legend>
			<form method="post" action="register_productdb.jsp">
				<table class="table table-bordered">
					<tr>
						<td>User name:</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>Product name</td>
						<td><select name="productname">
								<c:forEach var="col" items="${result.rows}">
									<option><c:out value="${col.name}"></c:out></option>
								</c:forEach>
						</select>
					</tr>
					<tr>
						<td>Serial Number</td>
						<td><select name="serialnumber">
								<c:forEach var="col" items="${result.rows}">
									<option><c:out value="${col.manufacturer}"></c:out></option>
								</c:forEach>
						</select>
					</tr>
					<tr>
						<td>Purchase Date:</td>
						<td><input type="text" name="purchasedate"></td>
					</tr>

					<tr>
						<td colspan="2"><input type="submit" value="Register"></td>
					</tr>
				</table>
			</form>
		</fieldset>
	</div>

	<script src="js/jquery.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>