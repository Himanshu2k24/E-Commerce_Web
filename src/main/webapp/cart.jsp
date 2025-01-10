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
        
        <c:if test="${not empty sessionScope.message}">
            <div class="alert alert-success">
                ${sessionScope.message}
                <% session.removeAttribute("message"); %>
            </div>
        </c:if>

        <c:if test="${empty sessionScope.cart}">
            <div class="alert alert-info">Your cart is empty</div>
            <a href="index.jsp" class="btn btn-primary">Continue Shopping</a>
        </c:if>
        
        <c:if test="${not empty sessionScope.cart}">
            <table class="table">
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Name</th>
                        <th>Price</th>
                        <th>MRP</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="total" value="0" />
                    <c:forEach var="item" items="${sessionScope.cart}">
                        <tr>
                            <td>
                                <img src="${item.value.imageUrl}" alt="${item.value.name}" 
                                     style="max-width: 100px;">
                            </td>
                            <td>${item.value.name}</td>
                            <td>₹${item.value.price}</td>
                            <td>₹${item.value.mrp}</td>
                            <td>
                                <a href="remove-from-cart?id=${item.key}" 
                                   class="btn btn-danger btn-sm">Remove</a>
                            </td>
                        </tr>
                        <c:set var="total" value="${total + item.value.price}" />
                    </c:forEach>
                </tbody>
                <tfoot>
                    <tr>
                        <td colspan="2"><strong>Total Amount:</strong></td>
                        <td colspan="3"><strong>₹${total}</strong></td>
                    </tr>
                </tfoot>
            </table>
            
            <div class="mt-3">
                <a href="products" class="btn btn-secondary">Continue Shopping</a>
                <a href="Payment.jsp" class="btn btn-success">Proceed to Checkout</a>
            </div>
        </c:if>
    </div>
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
