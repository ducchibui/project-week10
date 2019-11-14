<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>Product Registration</title>
    </head>
    <body>
    	<!-- Full Validation goes here -->
        <c:if test="${ empty param.username || empty param.product}">
            <c:redirect url="product_registration.jsp" >
                <c:param name="errMsg" value="Please Enter Product" />
            </c:redirect>
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/product_management?serverTimezone=EST5EDT"
                           user="root"  password="root"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO ProtectionRegistrations(username, productid, purchasedate, serialno) VALUES (?,?, ?, ?);
            <sql:param value="${param.username}" />
            <sql:param value="${param.product}" />
            <sql:param value="${param.purchaseDate}" />
            <sql:param value="${param.serialNo}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="product_registration.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>
-