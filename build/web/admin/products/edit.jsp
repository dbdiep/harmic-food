<%-- 
    Document   : edit
    Created on : Jun 28, 2022, 3:54:10 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
        <link href="admin/css/styles.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <%@include file="../include/navbar.jsp" %>
        <div id="layoutSidenav">
            <%@include file="../include/sidebar.jsp" %>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Product</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Product</li>
                        </ol>
                        <div class="row">
                            <form action="EditProductServlet" method="post">
                                <input type="hidden" name="id" value="${product.id}" />
                                <div class="form-group">
                                    <label for="cars">Choose a category:</label>
                                    <select name="category" id="category">
                                        <c:forEach items="${categoryList}" var="category">
                                            <option value="${categoryId}">${category.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Image</label>
                                    <input name="image" value="${product.image}" type="text" class="form-control" placeholder="Enter Image">
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input name="name" value="${product.name}" type="text" class="form-control" placeholder="Enter name">
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <input name="description" value="${product.description}" type="text" class="form-control" placeholder="Enter description">
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input name="price" value="${product.price}" type="number" class="form-control" placeholder="Enter price">
                                </div>
                                <button type="submit" class="btn btn-primary mt-2">Submit</button>
                            </form>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2022</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script>
    </body>
</html>
