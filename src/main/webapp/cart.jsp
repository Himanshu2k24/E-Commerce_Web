<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2>Shopping Cart</h2>
        <c:if test="${empty sessionScope.cart}">
            <p>Your cart is empty</p>
            <a href="index.jsp" class="btn btn-primary">Continue Shopping</a>
        </c:if>
        <c:if test="${not empty sessionScope.cart}">
            <table class="table">
                <thead>
                    <tr>
                        <th>Product Name</th>
                        <th>Price</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="totalSum" value="0" />
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <tr>
                            <td>${item.value.name}</td>
                            <td>&#8377; ${item.value.price}</td>
                        </tr>
                        <c:set var="totalSum" value="${totalSum + item.value.price}" />
                    </c:forEach>
                    <tr>
                        <td><strong>Total</strong></td>
                        <td><strong>&#8377; ${totalSum}</strong></td>
                    </tr>
                </tbody>
            </table>
            <div class="mt-3">
                <a href="index.jsp" class="btn btn-primary">Continue Shopping</a>
                <a href="Payment.jsp" class="btn btn-success ml-2">Proceed to Payment</a>
            </div>
        </c:if>
    </div>
</body>
</html>
