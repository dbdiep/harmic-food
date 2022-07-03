<%--
    Document   : cart
    Created on : Jun 15, 2022, 6:48:24 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
    <html>
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
        <div class="container">
            <div class="row">
                <div class="col-12">
                        <div class="table-content table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="product-remove" style="text-align: left;">Remove</th>
                                        <th class="cart-product-name" style="text-align: left;">Product</th>
                                        <th class="product-price" style="text-align: left;">Unit Price</th>
                                        <th class="product-quantity" style="text-align: left;">Quantity</th>
                                        <th class="product-subtotal" style="text-align: left;">Total</th>        
                                    </tr>
                                </thead>
                                <tbody>                                    
                                <c:forEach items="${orderDetailSesionList}" var="orderDetail">
                                        <tr>
                                            <td class="product-remove">
                                                <form action="OrderServlet" method="post">
                                                    <input type="hidden" name="action" value="delete">
                                                    <input type="hidden" name="productId" value="${orderDetail.productId}">
                                                    <button type="submit">Remove</button>
                                                </form>
                                            </td>
                                            <td class="cart-product-name"><a href="javascript:void(0)">${orderDetail.productName}</a></td>
                                            <td class="product-price"><span class="amount">${orderDetail.price}</span></td>
                                            <td class="quantity">
                                                <div class="cart-plus-minus">
                                                    <input class="cart-plus-minus-box" value="${orderDetail.quantity}" type="text">
                                                </div>
                                            </td>
                                            <td class="product-subtotal"><span class="amount">${(orderDetail.quantity * orderDetail.price)}</span></td>
                                        </tr>
                                    </c:forEach>    
                                </tbody>
                            </table>
                        </div>       
                        <div class="row">
                            <div class="col-md-5 ml-auto">
                                <div class="cart-page-total">
                                    <h2>Cart totals</h2>
                                        <ul>
                                            <li>Total <span>${total}</span></li>
                                        </ul>
                                    <a href="CheckOutServlet">Proceed to checkout</a>
                                </div>
                            </div>
                        </div>  
                </div>
            </div>
        </div>
    </body>
</html>
