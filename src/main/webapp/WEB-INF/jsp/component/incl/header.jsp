<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<!-- Main Page Header -->
<header class="main-page-header mb-3 bg-primary">
    <!-- Container -->
    <div class="container d-flex align-items-center">
        <!-- Company Name -->
        <div class="company-name">Easy-way Bank</div>
        <!-- End of Company Name -->
        <!-- Navigation -->
        <nav class="navigation">
            <li><a href="/app/dashboard">Dashboard</a></li>
            <li><a href="/app/payment_history">Payment History</a></li>
            <li><a href="/app/transact_history">Transaction History</a></li>
        </nav>
        <!-- End OF Navigation -->
        <!-- Display name -->
        <div class="ms-auto display-name text-white">
            <i class="fa fa-circle text-success me-2"></i>Welcome: <span>${user.first_name} ${user.last_name}</span>
        </div>
        <!-- End Display name -->
        <!-- Logout Button -->
        <a href="/logout" class="btn btn-sm text-white ms-3">
            <i class="fa fa-sign-out-alt me-1"></i>Sign Out
        </a>
        <!-- End of Logout Button -->
    </div>


    <!-- End Container -->
</header>
<!-- End Main Page Header -->