<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Order Confirmation</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .confirmation-box {
            text-align: center;
            padding: 40px;
            border-radius: 10px;
            background-color: #f8f9fa;
            margin-top: 50px;
        }
        .confirmation-icon {
            color: #28a745;
            font-size: 48px;
            margin-bottom: 20px;
        }
        .order-details {
            margin-top: 30px;
            text-align: left;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="confirmation-box">
            <div class="confirmation-icon">✓</div>
            <h2>Order Confirmed!</h2>
            <p class="lead">Thank you for your purchase</p>
            
            <div class="order-details card">
                <div class="card-body">
                    <h5 class="card-title">Order Summary</h5>
                    <table class="table">
                        <tbody>
                            <c:set var="totalSum" value="0" />
                            <c:forEach var="item" items="${sessionScope.cart}">
                                <tr>
                                    <td>${item.value.name}</td>
                                    <td>₹${item.value.price}</td>
                                </tr>
                                <c:set var="totalSum" value="${totalSum + item.value.price}" />
                            </c:forEach>
                            <tr>
                                <td><strong>Total Amount Paid</strong></td>
                                <td><strong>₹${totalSum}</strong></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="mt-4">
                <a href="index.jsp" class="btn btn-primary">Continue Shopping</a>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
