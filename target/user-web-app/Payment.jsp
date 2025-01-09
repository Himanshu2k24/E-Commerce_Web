<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Payment</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .payment-option {
            border: 1px solid #ddd;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
        }
        .payment-option.active {
            border-color: #007bff;
            background-color: #f8f9fa;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Payment Details</h2>
        <div class="row">
            <div class="col-md-8">
                <!-- Credit Card Payment Form -->
                <div id="cardPayment" class="payment-option active">
                    <form id="cardForm" onsubmit="return validateCardPayment(event)">
                        <div class="form-group">
                            <label>Card Number</label>
                            <input type="text" class="form-control" id="cardNumber" placeholder="1234 5678 9012 3456" maxlength="19">
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Expiry Date</label>
                                    <input type="text" class="form-control" id="expiryDate" placeholder="MM/YY" maxlength="5">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>CVV</label>
                                    <input type="password" class="form-control" id="cvv" placeholder="***" maxlength="3">
                                </div>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary btn-block">Pay Now</button>
                    </form>
                </div>
            </div>

            <!-- Order Summary -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Order Summary</h5>
                        <table class="table">
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
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Card number formatting
        document.getElementById('cardNumber').addEventListener('input', function(e) {
            let value = e.target.value.replace(/\s+/g, '').replace(/[^0-9]/gi, '');
            let formattedValue = '';
            for(let i = 0; i < value.length; i++) {
                if(i > 0 && i % 4 === 0) {
                    formattedValue += ' ';
                }
                formattedValue += value[i];
            }
            e.target.value = formattedValue;
        });

        // Expiry date formatting
        document.getElementById('expiryDate').addEventListener('input', function(e) {
            let value = e.target.value.replace(/\D/g, '');
            if (value.length >= 2) {
                value = value.slice(0,2) + '/' + value.slice(2);
            }
            e.target.value = value;
        });

        // Validate card payment
        function validateCardPayment(event) {
            event.preventDefault();
            const cardNumber = document.getElementById('cardNumber').value.replace(/\s+/g, '');
            const expiryDate = document.getElementById('expiryDate').value;
            const cvv = document.getElementById('cvv').value;

            if(!/^\d{16}$/.test(cardNumber)) {
                alert('Please enter a valid 16-digit card number');
                return false;
            }

            if(!/^\d{2}\/\d{2}$/.test(expiryDate)) {
                alert('Please enter a valid expiry date (MM/YY)');
                return false;
            }

            if(!/^\d{3}$/.test(cvv)) {
                alert('Please enter a valid 3-digit CVV');
                return false;
            }

            window.location.href = 'OrderConfirmation.jsp';
            return true;
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
