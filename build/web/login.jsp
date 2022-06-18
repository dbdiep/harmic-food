<%-- 
    Document   : login
    Created on : Jun 10, 2022, 5:55:15 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <section class="vh-100">
        <div class="container py-5 h-100">
          <div class="row d-flex align-items-center justify-content-center h-100">
            <div class="col-md-8 col-lg-7 col-xl-6">
                <div class="text-center">
                    <img src="https://htmldemo.net/harmic/harmic/assets/images/logo/dark.png" alt="Header Logo" class="img-fluid">
                </div>
                <div class="pt-5">
                    <form action="LoginServlet" method="POST">
                      <!-- Email input -->
                      <div class="form-outline mb-4">
                        <label class="form-label" for="form1Example13">Email address</label>
                        <input type="email" id="email" name="email" class="form-control form-control-lg" />
                      </div>
            
                      <!-- Password input -->
                      <div class="form-outline mb-4">
                          <label class="form-label" for="form1Example23">Password</label>
                        <input type="password" id="password" name="password" class="form-control form-control-lg" />
                      </div>
            
                      <div class="d-flex justify-content-around align-items-center mb-4">
                        <!-- Checkbox -->
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked />
                          <label class="form-check-label" for="form1Example3"> Remember me </label>
                        </div>
                        <a href="#!">Forgot password?</a>
                      </div>
            
                      <!-- Submit button -->
                      <button type="submit" class="btn btn-primary btn-lg btn-block">Sign in</button>
            
                      <div class="divider d-flex align-items-center my-4">
                        <p class="text-center fw-bold mx-3 mb-0 text-muted">OR</p>
                      </div>
            
                      <a class="btn btn-primary btn-lg btn-block" style="background-color: #3b5998" href="#!"
                        role="button">
                        <i class="fa-facebook-square me-2"></i>Continue with Facebook
                      </a>
                      <a class="btn btn-primary btn-lg btn-block" style="background-color: #55acee" href="#!"
                        role="button">
                        <i class="fab fa-twitter me-2"></i>Continue with Twitter</a>
            
                    </form>
                  </div>
            </div>
          </div>
        </div>
      </section>

</body>

</html>