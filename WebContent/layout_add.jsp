<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Product List</title>
<%@ include file="layout/header.jsp"%>
</head>
<body>

	<div class="container">
		<%@ include file="layout/nav_bar.jsp"%>

		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-12">
						<h2>
							Add <b>Product</b>
						</h2>
					</div>
				</div>
			</div>
			<form>
				<div class="modal-body">
					<div class="form-group">
						<label>Name</label> <input type="text" class="form-control"
							required>
					</div>
					<div class="form-group">
						<label>Email</label> <input type="email" class="form-control"
							required>
					</div>
					<div class="form-group">
						<label>Address</label>
						<textarea class="form-control" required></textarea>
					</div>
					<div class="form-group">
						<label>Phone</label> <input type="text" class="form-control"
							required>
					</div>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal"
						value="Cancel"> <input type="submit"
						class="btn btn-success" value="Add">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
