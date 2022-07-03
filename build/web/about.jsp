<%-- 
    Document   : about
    Created on : Jul 3, 2022, 9:18:16 PM
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
                            <div class="m-r-20">
                                <a href="HomeServlet" style="color: white">HOME</a>
                            </div>
                            <div class="m-r-20">
                                <a href="AboutUsServlet" style="color: white">ABOUT</a>
                            </div>
                            <div class="m-r-20">SHOP</div>
                            <div class="m-r-20">PAGES</div>
                            <div class="m-r-20">BLOG</div>
                            <div class="m-r-20">
                                <a href="ContactServlet" style="color: white">CONTACT</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="product-area section-space-top-100 row">
        <div class="col-md-6">
            <img style="height: 400px; width: 600px;" src="https://propzy.vn/tin-tuc/wp-content/uploads/2020/08/an-tam-voi-15-cua-hang-cung-cap-rau-sach-tai-tphcm-orfarm-1.png" alt="Logo">
        </div>
        <div class="col-md-6">
            <h3>BEST ORGANIC SHOP</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmo tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minimd veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip commo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
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
