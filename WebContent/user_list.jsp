<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Product List</title>
<%@ include file="layout/header.jsp"%>
<%@ include file="common/datasource.jsp"%>
</head>
<body>

	<div class="container">
		<%@ include file="layout/nav_bar.jsp"%>

		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-3">
						<h2>
							Manage <b>Users</b>
						</h2>
					</div>
					<div class="col-sm-6">
						<form method="post" action="users_list.jsp">
							<input type="text" class="title-search btn form-control"
								placeholder="Search" name="search_user">
						</form>
					</div>
				</div>
			</div>
			<c:if test="${pageContext.request.method=='GET'}">
				<c:if test="${ !empty param.search_user}">

					<sql:query dataSource="${dbCon}" var="exitingUser">
				SELECT * FROM users WHERE username = param.search_user ?
	   			 <sql:param value="${param.search_user}" />
					</sql:query>
					<c:choose>
						<c:when test="${exitingUser.rowCount==0}">
							<tr>
								<td colspan="6">No record found!</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:set var="data" value="${exitingProduct.rows[0]}" />
							<table class="table table-striped table-hover">
								<thead>
									<tr>
										<th>User name</th>
										<th>Phone</th>
										<th>Email</th>
										<th>Address</th>
										<th>Name</th>
										<th>Role</th>
									</tr>
								</thead>
								<tbody>


									<tr>
										<td><c:out value="${data.username}"></c:out></td>
										<td><c:out value="${data.phone}"></c:out></td>
										<td><c:out value="${data.email}"></c:out></td>
										<td><c:out value="${data.address}"></c:out></td>
										<td><c:out value="${data.name}"></c:out></td>
										<td><c:out value="${data.role}"></c:out></td>
										<td><a href="#" onclick="deteleSetup(${col.username})"
											data-toggle="modal" data-target="#deleteEmployeeModal"><i
												class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
										</td>
									</tr>


								</tbody>
							</table>
						</c:otherwise>
					</c:choose>
				</c:if>
			</c:if>


			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>User name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Address</th>
						<th>Name</th>
						<th>Role</th>
					</tr>
				</thead>
				<tbody>
					<sql:query dataSource="${dbCon}" var="result">
            SELECT * from users;
        </sql:query>
					<c:forEach var="col" items="${result.rows}">
						<tr>
							<td><c:out value="${col.username}"></c:out></td>
							<td><c:out value="${col.phone}"></c:out></td>
							<td><c:out value="${col.email}"></c:out></td>
							<td><c:out value="${col.address}"></c:out></td>
							<td><c:out value="${col.name}"></c:out></td>
							<td><c:out value="${col.role}"></c:out></td>
							<td><a href="#" onclick="deteleSetup(${col.username})"
								data-toggle="modal" data-target="#deleteEmployeeModal"><i
									class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
							</td>
						</tr>
					</c:forEach>

				</tbody>
			</table>
		</div>
	</div>
	<c:if test="${!empty param.msg}">
		<div id="msgModal" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<form>
						<div class="modal-header">
							<h4 class="modal-title">Message</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<p>${param.msg}</p>

						</div>
						<div class="modal-footer">
							<c:choose>
								<c:when test="${!empty param.buttonType}">
									<input type="button" class="btn ${ param.buttonType}"
										data-dismiss="modal" value="Close">
								</c:when>
								<c:otherwise>
									<input type="button" class="btn btn-default"
										data-dismiss="modal" value="Close">
								</c:otherwise>
							</c:choose>
						</div>
					</form>
				</div>
			</div>
		</div>
		<script>
		$(document).ready(function() {
		  $('#msgModal').modal('show');
		});
	</script>
	</c:if>

	<script>
		function deteleSetup(id){
			$('#delete_id').val(id);
		}
	</script>
</body>
</html>