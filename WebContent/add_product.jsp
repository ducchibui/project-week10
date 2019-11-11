<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
	<div>
		<form action="add_product_db.jsp" method="post">
			<table>
				<tr>
					<td><h1>Add Product</h1></td>
				</tr>
				<tr>
					<td><label>Product Name :</label> <input type="text"
						name="name" /></td>
				</tr>
				<tr>
					<td><label>Product Type :</label></br> <input type="radio"
						name="productType" value="Home Appliance" /> Home Appliance <input
						type="radio" name="productType" value="Computer Hardware" />
						Computer Hardware </br><input type="radio" name="productType"
						value="Game Console" /> Game Console<input type="radio"
						name="productType" value="Clothing" /> Clothing</td>
				</tr>
				<tr>
					<td><label>Manufacturer :</label> <select name="manufacturer">
							<option value="LG">LG</option>
							<option value="Samsung">Samsung</option>
							<option value="Apple">Apple</option>
							<option value="HP">HP</option>
							<option value="Dell">Dell</option>
					</select></td>
				</tr>
				<tr>
					<td><label>Color :</label> <input type="text" name="color" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Add Product" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>