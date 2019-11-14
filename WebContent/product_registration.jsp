<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
<link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
	<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/product_management?serverTimezone=EST5EDT"
		user="root" password="root"></sql:setDataSource>
	<div>
		<form action="product_registration_db.jsp" method="post">
			<table>
				<tr>
					<td><h1>Product Registration</h1></td>
				</tr>
				<tr>
					<td><label>User Name :</label> <input type="text" name="username" /></td>
				</tr>
				<tr>
					<td><label>Product :</label>
						<sql:query dataSource="${dbCon}" var="result">
							select * from Products;
						</sql:query>

					
						<select name ="product">
						<c:forEach var="col" items="${result.rows}">
							<option value="${col.id}">${col.name} - ${col.type} - ${col.manufacturer} - ${col.color}</option>
							
						</c:forEach>
						  
						</select>
					</td>
				</tr>
				<tr>
					<td><label>Purchase Date :</label> <input type="text" name="purchaseDate" /></td>
				</tr>
				
				<tr>
					<td><label>Serial No</label> <input type="text" name="serialNo" /></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Registry Product" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>