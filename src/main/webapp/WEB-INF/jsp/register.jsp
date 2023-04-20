<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="css/fontawesome/css/all.css">
    <title>Register</title>
</head>

<body class="d-flex align-items-center justify-content-center">
    <!-- Card Registration -->
    <div class="card registration-form-card col-6 bg-transparent border-0">
        <!-- Card Body -->
        <div class="card-body">
            <!-- Form Header -->
            <h1 class="form-header card-title mb-3">
                <i class="fa fa-edit"></i>Register
            </h1>
            <!-- End Form Header -->
            <!-- Registration Form -->
            <%--Display Message--%>
            <c:if test="${requestScope.passwordMisMatch != null}">
                <div class="alert alert-danger text-center border border-danger">
                    <b>${requestScope.passwordMisMatch}</b>
                </div>
            </c:if>
            <c:if test="${requestScope.successfulRegistration != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.successfulRegistration}</b>
                </div>
            </c:if>
            <c:if test="${requestScope.SUCCESS != null}">
                <div class="alert alert-success text-center border border-success">
                    <b>${requestScope.SUCCESS}</b>
                </div>
            </c:if>
            <%--@elvariable id="registerUser" type="" --%>
            <form:form action="/register" class="reg-form" modelAttribute="registerUser">
                <!-- Row -->
                <div class="row">
                    <!-- form Group -->
                    <div class="form-group col">
                        <form:input type="text" class="form-control form-control-lg" path="first_name" placeholder="Enter First Name" id="" />
                        <form:errors path="first_name" class="text-white bg-danger"/>
                    </div>
                    <!--End form Group -->
                    <!-- form Group -->
                    <div class="form-group col">
                        <form:input type="text" class="form-control form-control-lg" path="last_name" placeholder="Enter Last Name" id="" />
                        <form:errors path="last_name" class="text-white bg-danger"/>
                    </div>
                    <!--End form Group -->
                </div>
                <!-- End of Row -->
                <!-- form Group -->
                <div class="form-group col">
                    <form:input type="email" class="form-control form-control-lg" path="email" placeholder="Enter email" id="" />
                    <form:errors path="email" class="text-white bg-danger"/>
                </div>
                <!--End form Group -->
                <!-- Row -->
                <div class="row">
                    <!-- form Group -->
                    <div class="form-group col">
                        <form:input type="password" class="form-control form-control-lg" path="password" placeholder=" Enter password" id="" />
                        <form:errors path="password" class="text-white bg-danger"/>
                    </div>
                    <!--End form Group -->
                    <!-- form Group -->
                    <div class="form-group col">
                        <input type="password" class="form-control form-control-lg" name="confirm_password" placeholder="Confirm password" id="" />
                        <small class="text-white bg-danger">${confirm_pass}</small>
                    </div>
                    <!--End form Group -->
                </div>
                <!-- End of Row -->
                <!-- form Group -->
                <div class="form-group col">
                    <button id="register" class="btn btn-lg">Register</button>
                </div>
                <!--End form Group -->
            </form:form>
            <!--End Registration Form -->
            <!-- Card Text -->
            <p class="card-text text-white my-2">
                Already have an Account <span class="ms-2 text-warning"><a href="/login" class="btn btn-sm text-warning">Sign In</a></span>
            </p>
            <!-- End Card Text -->
        </div>

        <!-- End Card Body -->

        <!-- Back button to Landing Page -->
        <small class="text-warning"><i class="fa fa-arrow-alt-circle-left"></i><a href="/" class="btn btn-sm text-warning">Back</a></small>
        <!-- End Back button to Landing Page -->
    </div>
    <!--End Card Registration -->
</body>

</html>