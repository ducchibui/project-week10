<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="common/datasource.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Register user to DB</title>
<%@ include file="layout/header.jsp"%>
</head>
<body>
	<c:set var="errUserName" value="" />
	<c:set var="errPassword" value="" />
	<c:set var="errPhone" value="" />
	<c:set var="errEmail" value="" />
	<c:set var="errAddress" value="" />
	<c:set var="errName" value="" />
	<c:set var="data" value="${param }" />
	<c:if test="${pageContext.request.method=='POST'}">
		<sql:query dataSource="${dbCon}" var="result">
			select * from users;
		</sql:query>
		<c:forEach var="col" items="${result.rows}">
			<c:if test="${col.username==data.username }">
				<c:redirect url="user_register.jsp">
					<c:param name="msg" value="User is already registered." />
					<c:param name="buttonType" value="btn-success" />
				</c:redirect>
			</c:if>
		</c:forEach>
		<c:if
			test="${!empty data.username and !empty data.password and !empty data.email and !empty data.phone and !empty data.address and !empty data.name}">
			<sql:update dataSource="${dbCon}" var="result">
            INSERT INTO users(username, password,phone,email, address, name,role)
             VALUES (?,?,?,?,?,?,?);
            <sql:param value="${data.username}" />
				<sql:param value="${data.password}" />
				<sql:param value="${data.phone}" />
				<sql:param value="${data.email}" />
				<sql:param value="${data.address}" />
				<sql:param value="${data.name}" />
				<sql:param value="user" />
			</sql:update>
			<c:if test="${result>=1}">
				<c:redirect url="product_list.jsp">
					<c:param name="msg" value="User is registered successfully." />
					<c:param name="buttonType" value="btn-success" />
				</c:redirect>
			</c:if>
		</c:if>
	</c:if>
</body>
</html>
