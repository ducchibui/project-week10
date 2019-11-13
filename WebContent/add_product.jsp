<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
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
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#myToggleNav" aria-expanded="false"
				aria-label="Toggle Navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="myToggleNav">
				<div class="navbar-nav">
					<a class="nav-item nav-link " href="all_user_list.jsp">List
						Users</a> <a class="nav-item nav-link " href="product_list.jsp">List
						Product</a> <a class="nav-item nav-link " href="claim_list.jsp">List
						Claim</a> <a class="nav-item nav-link " href="logout.jsp">Log out</a>
				</div>
				<!--navbar nav-->
			</div>
			<!--collapse-->
		</div>
		<!--container-->
	</nav>
	<!--navbar--->
	<div class="container">
		<form action="add_productdb.jsp" method="post">
			<table class="table table-bordered">
				<tr>
					<td colspan="2"><h1>Add Product</h1></td>
				</tr>
				<tr>
					<td>Product Name</td>
					<td><input type="text" name="name" /></td>
				</tr>
				<tr>
					<td rowspan="5">Product Type</td>
				</tr>
				<tr>
					<td><input type="radio" name="productType"
						value="Home Appliance" /> Home Appliance</td>
				</tr>
				<tr>
					<td><input type="radio" name="productType"
						value="Computer Hardware" /> Computer Hardware</td>
				</tr>
				<tr>
					<td><input type="radio" name="productType"
						value="Game Console" /> Game Console</td>
				</tr>
				<tr>
					<td><input type="radio" name="productType" value="Clothing" />
						Clothing</td>
				</tr>
				<tr>
					<td>Manufacturer</td>
					<td><select name="manufacturer">
							<option value="LG">LG</option>
							<option value="Samsung">Samsung</option>
							<option value="Apple">Apple</option>
							<option value="HP">HP</option>
							<option value="Dell">Dell</option>
					</select></td>
				</tr>
				<tr>
					<td>Color</td>
					<td><input type="text" name="color" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Add Product" /></td>
				</tr>
			</table>
		</form>
	</div>
	<script src="js/jquery.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>