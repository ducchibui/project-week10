<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Registration List</title>
<link rel="stylesheet" type="text/css" href="styles/main.css">
</head>
<body>
	<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/product_management?serverTimezone=EST5EDT"
		user="root" password="root"></sql:setDataSource>
		<div id="list_product" style="float:none">
			<h1>Product Registration List</h1>
			<form action="product_registration_list.jsp" method="get">
				<h5>Search by User Name:  <input type="text" name="search_username" /> </h5>
				<h5>Search By Product Name: <input type="text" name="search_productname" /></h5>
				<h5><input type="submit" value="Search" /></h5>
			</form>
			</form>
			<table>
				<thead>
					<tr>
						<td>User</td>
						<td>Product Name</td>
						<td>Product Type</td>
						<td>Manufacturer</td>
						<td>Color</td>
						<td>Purchase Date</td>
						<td>Serial Number</td>
					</tr>
				</thead>
				<tbody>

					<sql:query dataSource="${dbCon}" var="result">
			select u.username, p.name, p.type, p.manufacturer, p.color, pr.purchase_date, pr.serial_no  from product_registration pr inner join products p on (pr.product_id = p.id) 
				inner join users u on (pr.username = u.username) ;
		</sql:query>

					<c:forEach var="col" items="${result.rows}">
						<tr>
							<td><c:out value="${col.username}"></c:out></td>
							<td><c:out value="${col.name}"></c:out></td>
							<td><c:out value="${col.type}"></c:out></td>
							<td><c:out value="${col.manufacturer}"></c:out></td>
							<td><c:out value="${col.color}"></c:out></td>
							<td><c:out value="${col.purchase_date}"></c:out></td>
							<td><c:out value="${col.serial_no}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>