<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Product</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
</head>
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
<body>
	<div class="container">
		<fieldset>
			<legend>Update Product</legend>
			<form method="post" action="update_productdb.jsp">
				<table class="table table-bordered">
					<tr>
						<td>Product name</td>
						<td><input type="text" name="productname" value=""></td>
					</tr>
					<tr>
						<td>Serial Number</td>
						<td><input type="text" name="serialnumber" value=""></td></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Update"></td>
					</tr>
				</table>
			</form>
		</fieldset>
	</div>
</body>
	<script src="js/jquery.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</html>