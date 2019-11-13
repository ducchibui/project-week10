<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Product</title>
<link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
	<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/product_management?serverTimezone=EST5EDT"
		user="root" password="12345"></sql:setDataSource>
		<div id="list_product" style="float:none">
			<h1>Product List</h1>
			<h5><a href="/add_product.jsp">Add Product</a></h5>
			<table>
				<thead>
					<tr>
						<td>Product No</td>
						<td>Product Name</td>
						<td>Product Type</td>
						<td>Manufacturer</td>
						<td>Color</td>
						<td colspan="2">Action</td>
					</tr>
				</thead>
				<tbody>

					<sql:query dataSource="${dbCon}" var="result">
			select * from Products;
		</sql:query>

					<c:forEach var="col" items="${result.rows}">
						<tr>
							<td><c:out value="${col.id}"></c:out></td>
							<td><c:out value="${col.name}"></c:out></td>
							<td><c:out value="${col.type}"></c:out></td>
							<td><c:out value="${col.manufacturer}"></c:out></td>
							<td><c:out value="${col.color}"></c:out></td>
							<td><a href="/update_product?id=${col.ProductNo}">Update</a></td>
							<td><a href="/delete_product?id=${col.ProductNo}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>