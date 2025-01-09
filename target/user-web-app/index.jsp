<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Commerce Website</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="styles.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">E-Commerce</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav ml-auto">
                <c:choose>
                    <c:when test="${not empty sessionScope.user}">
                        <li class="nav-item">
                            <a class="nav-link" href="profile.jsp">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="cart.jsp">Cart</a>
                        </li>
                        <li class="nav-item">
                            <form action="UserServlet" method="post" style="display: inline;">
                                <input type="hidden" name="action" value="logout">
                                <button type="submit" class="btn btn-link nav-link" style="display: inline; padding: 0;">Logout</button>
                            </form>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="register.jsp">Register</a>
                        </li>
                    </c:otherwise>
                </c:choose>
            </ul>
        </div>
    </nav>

    <div class="container">
        <h2 class="mt-5">Welcome to E-Commerce Website!</h2>

        <!-- Search Bar Section -->
        <div class="mt-4 search-container">
            <form action="SearchServlet" method="get">
                <div class="form-group mr-2">
                    <input type="text" name="query" class="form-control search-box" placeholder="Search for items..." required>
                </div>
                <button type="submit" class="btn btn-primary search-button">Search</button>
            </form>
        </div>

        <!-- Products Section -->
        <div class="row mt-5">
            <!-- Product 1 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/1.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 1</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 1000</span>
                            <del><span class="discounted-price">MRP &#8377 1500</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="1">
                                    <input type="hidden" name="productName" value="Product 1">
                                    <input type="hidden" name="price" value="1000">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 2 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/2.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 2</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 1500</span>
                            <del><span class="discounted-price">MRP &#8377 2000</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="2">
                                    <input type="hidden" name="productName" value="Product 2">
                                    <input type="hidden" name="price" value="1500">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 3 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/3.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 3</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 2000</span>
                            <del><span class="discounted-price">MRP &#8377 2500</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="3">
                                    <input type="hidden" name="productName" value="Product 3">
                                    <input type="hidden" name="price" value="2000">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 4 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/4.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 4</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 2500</span>
                            <del><span class="discounted-price">MRP &#8377 3000</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="4">
                                    <input type="hidden" name="productName" value="Product 4">
                                    <input type="hidden" name="price" value="2500">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 5 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/5.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 5</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 2500</span>
                            <del><span class="discounted-price">MRP &#8377 3000</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="5">
                                    <input type="hidden" name="productName" value="Product 5">
                                    <input type="hidden" name="price" value="2500">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 6 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/6.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 6</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 3000</span>
                            <del><span class="discounted-price">MRP &#8377 3500</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="6">
                                    <input type="hidden" name="productName" value="Product 6">
                                    <input type="hidden" name="price" value="3000">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 7 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/7.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 7</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 3500</span>
                            <del><span class="discounted-price">MRP &#8377 4000</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="7">
                                    <input type="hidden" name="productName" value="Product 7">
                                    <input type="hidden" name="price" value="3500">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 8 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/8.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 8</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 4000</span>
                            <del><span class="discounted-price">MRP &#8377 4500</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="8">
                                    <input type="hidden" name="productName" value="Product 8">
                                    <input type="hidden" name="price" value="4000">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 9 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/9.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 9</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="9">
                                    <input type="hidden" name="productName" value="Product 9">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 10 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/10.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 10</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="10">
                                    <input type="hidden" name="productName" value="Product 10">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 11 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/11.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 11</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="11">
                                    <input type="hidden" name="productName" value="Product 11">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 12 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/12.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 12</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="12">
                                    <input type="hidden" name="productName" value="Product 12">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 13 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/13.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 13</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="13">
                                    <input type="hidden" name="productName" value="Product 13">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 14 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/14.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 14</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="14">
                                    <input type="hidden" name="productName" value="Product 14">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 15 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/15.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 15</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="15">
                                    <input type="hidden" name="productName" value="Product 15">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

            <!-- Product 16 -->
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="image/16.png" alt="Product Image">
                    <div class="card-content">
                        <h3>Product 16</h3>
                        <div class="price">
                            <span class="regular-price">&#8377 299</span>
                            <del><span class="discounted-price">MRP &#8377 699</span></del>
                        </div>
                        <c:choose>
                            <c:when test="${not empty sessionScope.user}">
                                <form action="CartServlet" method="post">
                                    <input type="hidden" name="productId" value="16">
                                    <input type="hidden" name="productName" value="Product 16">
                                    <input type="hidden" name="price" value="299">
                                    <button type="submit" class="btn">Add to Cart</button>
                                </form>
                            </c:when>
                            <c:otherwise>
                                <a href="error.jsp" class="btn btn-warning">Login to Buy</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
