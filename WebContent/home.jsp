<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header class="d-flex align-self-center"
		style="background-color: cornsilk">
		<div class="container">
			<img src="images/sharesquare.png">
		</div>
	</header>

	<div class="container">
		<div class="row">
			<fieldset>
				<legend>Login</legend>
				<form method="post">
					<table collpadding="2" cellspacing="2">
						<tr>
							<td>User name:</td>
							<td><input type="text" name="username"></td>
						</tr>
						<tr>
							<td>password:</td>
							<td><input type="password" name="password"></td>
						</tr>
						<tr>
							<td><input type="submit" value="Login"></td>
						</tr>
					</table>
				</form>
				<%--Go to product register page if login succeed--%>
				<%--Or on home page and display error message if login fail --%>
			</fieldset>
		</div>
	</div>
	<div class ="container">
	<div class="row">
		<fieldset>
			<legend>Create new account</legend>
			<form method="post" action="userregistrationdb.jsp">
				<table collpadding="2" cellspacing="2">
					<tr>
						<td>User name:</td>
						<td><input type="text" name="username"></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><input type="password" name="password"></td>
					</tr>
					<tr>
						<td>Phone:</td>
						<td><input type="text" name="phone"></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="text" name="email"></td>
					</tr>
					<tr>
						<td>Address:</td>
						<td><input type="text" name="address"></td>
					</tr>
					<tr>
						<td><label>Name: </label></td>
						<td><input type="text" name="name"></td>
					</tr>
					<input type="hidden" name="role" value="user">
					<tr>
						<td><input type="submit" value="Register"></td>
					</tr>
				</table>
			</form>
		</fieldset>
		</div>
	</div>

	<script src="js/jquery.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>