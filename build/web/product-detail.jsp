<%-- 
    Document   : product-details
    Created on : Jun 8, 2022, 5:45:06 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="css\style.css" rel="stylesheet">

    <title>Food Restaurant</title>

</head>

<body>
    <div class="header-top border-bottom p-4">
        <div class="container">
            <div class="row">
                <div class="col-6 align-items-center">
                    <div class="header-top-left">
                        <ul class="dropdown-wrap text-matterhorn">
                            <li>
                                Call Us
                                <a href="HomeServlet">3965410</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-6 align-items-center">
                    <div class="header-top-right text-matterhorn">
                        <p class="shipping mb-0">Free delivery on order over
                            <span>$200</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-middle py-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-12">
                    <div class="header-middle-wrap row">
                        <div class="col-md-2">
                            <a href="HomeServlet" class="header-logo">
                                <img src="https://htmldemo.net/harmic/harmic/assets/images/logo/dark.png"
                                    alt="Header Logo">
                            </a>
                        </div>
                        <div class="col-md-7">
                            <form action="SearchServlet" method="GET" class="header-search">
                                <select class="form-control category-select">
                                    <option value="all">All Category</option>
                                </select>
                                <input type="text" name="name" placeholder="Search" class="form-control ms-1">
                                <div>
                                    <button class="ms-1 btn btn-outline-whisper btn-primary-hover">
                                        <i class="fa fa-search" aria-hidden="true"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                        <div class="col-md-3 header-right p-2">
                            <div class="text-center">
                                <a href="LogoutServlet" style="color: black"><i class="ms-2 fa fa-user-circle-o" aria-hidden="true"></i></a>
                                <i class="ms-2 fa fa-heart-o" aria-hidden="true"></i>
                                <a href="CartServlet" style="color: black"><i class="ms-2 fa fa-shopping-cart" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="main-header header-sticky">
        <div class="container">
            <div class="row align-items-center p-2">
                <div class="col-12">
                    <div class="main-menu">
                        <div class="main-nav d-flex">
                            <div class="m-r-20">HOME</div>
                            <div class="m-r-20">ABOUT</div>
                            <div class="m-r-20">SHOP</div>
                            <div class="m-r-20">PAGES</div>
                            <div class="m-r-20">BLOG</div>
                            <div class="m-r-20">CONTACT</div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="product-area section-space-top-100">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div>
                        <img src="${product.image}"
                            alt="Product Image" style=" width: 250px !important;height: 250px !important;">
                    </div>
                </div>
                <div class="col-md-8">
                    <div>
                        <h3>${product.name}</h3>
                        <div>$ ${product.price}</div>
                        <div class="mt-2">${product.description}</div>
                        <form action="OrderServlet" method="POST">
                            <input hidden="true" type="number" name="productId" value="${product.id}">
                            <input hidden="true" name="productName" value="${product.name}">
                            <input hidden="true" name="price" value="${product.price}">
                            <input hidden="true" name="action" value="create">
                            
                            <div class="row mt-2">
                                <div class="col-md-1">
                                    <input class="form-control shop-cart-quantity product-desc font-basic" maxlength="6"
                                        name="quantity" id="quantity" step="1" style="padding: 0px 4px !important;" type="number" min="1"
                                        max="94">
                                </div>
                                <div class="col-md-6">
                                    <button class="cart-button font-basic" type="submit">Add To Cart</button>
                                </div>
                            </div>
                        </form>
                        <div class="mt-3">
                            <span>Categories : Natural, Organic, Beautiful, Organic Food</span>
                        </div>
                        <div class="mt-3">
                            <span>Product Tags : Organic, Vegetable, Fruits</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="product-slider-area pb-5">
        <div class="container">
            <div class="text-center">
                <h3>RELATED PRODUCTS</h3>
            </div>
            <div class="row">
                <c:forEach items="${productList}" var="product">
                    <div class="col-md-3">
                        <div class="product-image">
                            <a href="ProductDetail?id=${product.id}">
                                <img src="${product.image}" alt="Product Image" style=" width: 250px !important;height: 250px !important;">
                            </a>
                        </div>
                        <div class="d-flex">
                             <a class="product-name" href="ProductDetail?id=${product.id}">${product.name}</a>
                            <div class="ms-2">${product.price}</div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="footer">
        <div class="section-space-top-100">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <a href="index.html" class="header-logo">
                            <img src="https://htmldemo.net/harmic/harmic/assets/images/logo/dark.png" alt="Header Logo">
                        </a>
                        <p class="mt-2">Lorem ipsum dolor sit amet, consectet adipi elit, sed do eius tempor incididun
                            ut labore gthydolore.</p>
                        <p><i class="fa fa-map-marker"></i> 184 Main Rd E, St Albans VIC 3021,</p>
                        <p><i class="fa fa-envelope"></i> info@example.com</p>
                    </div>
                    <div class="col-md-3">
                        <h5>INFORMATION</h5>
                        <ul>
                            <li>
                                <a href="javascript:void(0)">FAQ</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">SHIPPING</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">RETURNS</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">ORDER STATUS</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">GIFT CARD BALANCE</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">ACCESSIBILITY</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h5>MY ACCOUNT</h5>
                        <ul>
                            <li>
                                <a href="javascript:void(0)">MY ACCOUNT</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">CHECKOUT</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">VALIDATION</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">WISHLIST</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">TERMS OF USE</a>
                            </li>
                            <li>
                                <a href="javascript:void(0)">FAQ</a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <h5>NEWSLETTERS</h5>
                        <p class="mt-2">Lorem ipsum dolor sit amet, consectet adipi elit, sed do eius tempor.</p>
                        <div>
                            <form action="#">
                                <input class="input-field form-control" type="email" autocomplete="off"
                                    placeholder="Your Email">
                                <div class="pt-3">
                                    <button
                                        class="btn btn-custom-size btn-primary btn-secondary-hover rounded-0 form-control width-button">SEND
                                        MAIL</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>