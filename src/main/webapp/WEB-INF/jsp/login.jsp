<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">
    <title>Login</title>
</head>

<body class="d-flex align-items-center justify-content-center">
    <!-- Card Login -->
    <div class="card Login-form-card col-4 bg-transparent border-0">
        <!-- Card Body -->
        <div class="card-body">
            <!-- Form Header -->
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-edit"></i>Login
            </h1>
            <!-- End Form Header -->
<%--            Display Message--%>
            <c:if test="${requestScope.SUCCESS != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.SUCCESS}</b>
                </div>
            </c:if>
            <!-- Login Form -->
            <form action="" class="login-form">

                <!-- form Group -->
                <div class="form-group col">
                    <input type="email" class="form-control form-control-lg" name="email" placeholder="Enter email" id="" />
                </div>
                <!--End form Group -->
                <!-- form Group -->
                <div class="form-group col">
                    <input type="password" class="form-control form-control-lg" name="password" placeholder=" Enter password" id="" />
                </div>
                <!--End form Group -->
                <!-- form Group -->
                <div class="form-group col">
                    <button id="register" class="btn btn-lg">Login</button>
                </div>
                <!--End form Group -->
            </form>
            <!--End Login Form -->
            <!-- Card Text -->
            <p class="card-text text-white my-2">
                Don't have an Account <span class="ms-2 text-warning"><a href="/register" class="btn btn-sm text-warning">Sign Up</a></span>
            </p>
            <!-- End Card Text -->
        </div>

        <!-- End Card Body -->

        <!-- Back button to Landing Page -->
        <small class="text-warning"><i class="fa fa-arrow-alt-circle-left"></i><a href="/" class="btn btn-sm text-warning">Back</a></small>
        <!-- End Back button to Landing Page -->
    </div>
    <!--End Card Login -->
</body>
</html>