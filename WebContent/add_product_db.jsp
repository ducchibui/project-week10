<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>Add Product</title>
    </head>
    <body>
    	<!-- Full Validation goes here -->
        <c:if test="${ empty param.name || empty param.productType}">
            <c:redirect url="add_product.jsp" >
                <c:param name="errMsg" value="Please Enter Product and Quantity" />
            </c:redirect>
        </c:if>
        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost:3306/product_management?serverTimezone=EST5EDT"
                           user="root"  password="root"/>
 
 
        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO products(name, color,  manufacturer, type) VALUES (?,?, ?, ?);
            <sql:param value="${param.name}" />
            <sql:param value="${param.color}" />
            <sql:param value="${param.manufacturer}" />
            <sql:param value="${param.productType}" />
        </sql:update>
        <c:if test="${result>=1}">
            <font size="5" color='green'> Congratulations ! Data inserted
            successfully.</font>
 
            <c:redirect url="product_list.jsp" >
                <c:param name="susMsg" value="Congratulations ! Data inserted
            successfully." />
            </c:redirect>
        </c:if> 
 
 
    </body>
</html>
-