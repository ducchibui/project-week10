<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List claim</title>
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
	<sql:setDataSource var="dbCon" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost/project_week10?serverTimezone=EST5EDT"
		user="root" password="12345"></sql:setDataSource>
	<div class="container">
		<h1>List Claim</h1>
		<table class="table table-bordered">
		
			<thead class="thead-light">
				<tr>
					<th scope="col">Product name</th>
					<th scope="col">Date of claim</th>
					<th scope="col">Description</th>		
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<sql:query dataSource="${dbCon}" var="result">
			select * from claim;
		</sql:query>

				<c:forEach var="col" items="${result.rows}">
					<tr class="table-primary">
						<td><c:out value="${col.productname}"></c:out></td>
						<td><c:out value="${col.dateclaim}"></c:out></td>
						<td><c:out value="${col.description}"></c:out></td>
						<td><c:out value="${col.status}"></c:out></td>
						<td><a href="/update_claim?id=${col.ProductNo}">Click to approve</a></td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
	</div>
	<script src="js/jquery.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>