<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>

<!-- Container:No account -->
<div class="container">
    <!-- Card: No account -->
    <div class="card no-accounts-card">
        <!-- Card Body -->
        <div class="card-body">
            <!-- Card Title -->
            <h1 class="card-title">
                <i class="fas fa-ban text-danger"></i>No Registered Account
            </h1>
            <hr>
            <!-- End of Card Title -->
            <!-- Card Text -->
            <div class="card-text">
                You currently do not have any registered accounts <br> Please click below to register / Add a new account
            </div>
            <br>
            <!-- End of Card Text -->
            <button class="btn btn-primary btn-lg" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><i class="fa fa-credit-card"></i> Add new Account</button>
        </div>
        <!-- End Card Body -->
    </div>
    <!-- End of Card: No account -->
</div>
<!-- End of Container:No account -->