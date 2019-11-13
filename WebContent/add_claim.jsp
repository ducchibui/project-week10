<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a new claim</title>
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
                <a class="nav-item nav-link " href="register_product.jsp">Register New Product</a>
                <a class="nav-item nav-link " href="add_claim.jsp">Add new Claim</a>
                <a class="nav-item nav-link " href="logout.jsp">Log out</a>
            </div><!--navbar nav-->
        </div><!--collapse-->
    </div><!--container-->
</nav><!--navbar--->
	<div class="container">
		<fieldset>
			<legend>Add a new claim</legend>
			<form method="post" action="add_claimdb.jsp">
				<table class="table table-bordered">
					<tr>
						<td>Product name</td>
						<td><input type="text" name="productname"></td>
					</tr>
					<tr>
						<td>Description</td>
						<td><input type="text" name="description"></td>
					</tr>
					<tr>
						<td>Date of claim</td>
						<td><input type="text" name="claimdate"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Claim"></td>
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