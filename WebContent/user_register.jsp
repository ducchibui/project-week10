<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Register user</title>
<%@ include file="layout/header.jsp"%>
<%@ include file="common/datasource.jsp"%>
</head>
<body>
	<c:set var="errUserName" value="" />
	<c:set var="errPassword" value="" />
	<c:set var="errPhone" value="" />
	<c:set var="errEmail" value="" />
	<c:set var="errAddress" value="" />
	<c:set var="errName" value="" />
	<c:set var="data" value="${param }" />
	<div class="container">
		<%@ include file="layout/nav_bar.jsp"%>

		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-12">
						<h2>
							Register <b>New User</b>
						</h2>
					</div>
				</div>
			</div>
			<form action="user_register_db.jsp" method="post">
				<div class="modal-body">
					<div class="form-group">
						<label>User name</label> <input type="text" name="username"
							class="form-control" value="${data.username}" required>
						<c:if test="${!empty errUserName}">
							<small class="text-danger">${errUserName}</small>
						</c:if>
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" name="password"
							class="form-control" value="${data.password}" required>
						<c:if test="${!empty errPassword}">
							<small class="text-danger">${errPassword}</small>
						</c:if>
					</div>
					<div class="form-group">
						<label>Phone</label> <input type="text" name="phone"
							class="form-control" required value="${data.phone}">
						<c:if test="${!empty errPhone}">
							<small class="text-danger">${errPhone}</small>
						</c:if>
					</div>
					<div class="form-group">
						<label>Email</label> <input type="text" name="email"
							class="form-control" required value="${data.email}">
						<c:if test="${!empty errEmail}">
							<small class="text-danger">${errEmail}</small>
						</c:if>
					</div>
					<div class="form-group">
						<label>Address</label> <input type="text" name="address"
							class="form-control" required value="${data.address}">
						<c:if test="${!empty errAddress}">
							<small class="text-danger">${errAddress}</small>
						</c:if>
					</div>
					<div class="form-group">
						<label>Name</label> <input type="text" name="name"
							class="form-control" required value="${data.name}">
						<c:if test="${!empty errName}">
							<small class="text-danger">${errName}</small>
						</c:if>
					</div>
				</div>
				<div class="modal-footer">
					<a href="user_register.jsp"> <input type="button"
						class="btn btn-default" data-dismiss="modal" value="Cancel">
					</a>
							<input type="submit" class="btn btn-success" value="Add">
					</div>
			</form>
		</div>
	</div>

</body>
</html>