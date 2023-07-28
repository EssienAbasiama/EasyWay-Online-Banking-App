<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>

<!-- Start of Account Form -->
<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
    <div class="offcanvas-header">
        <!-- Card Account Form Card-->
        <h5 id="offcanvasRightLabel" class="text-white">Create / Add an Account</h5>
        <button class="btn-close text-reset" type="button" data-bs-dismiss="offcanvas" aria-label="close"></button>
    </div>
    <!-- Offcanvas Body: Account form Wrapper -->
    <div class="offcanvas-body">


        <!-- Offcanvas Body: Account form Wrapper -->
        <div class="offcanvas-body">
            <div class="card">
                <div class="card-body">
                    <form action="/account/create_account" method="post" class="add-account-form">
                        <!-- Form Group -->
                        <div class="form-group"><label for="">Enter Account Name</label>
                            <input type="text" name="account_name" class="form-control" placeholder="Enter Account Name ..." id=""></div>
                        <!-- End of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group"><label for="">Select Account Type</label>
                            <select name="account_type"  class="form-control">
                                <option value="">-- Select Account Type --</option>
                                <option value="check">Check</option>
                                <option value="savings">Savings</option>
                                <option value="business">Business</option>
                            </select></div>
                        <!-- End of Form Group -->
                        <!-- Form Group -->
                        <div class="form-group my-2"><button class="btn btn-md transact-btn">Add Account</button></div>
                        <!-- End of Form Group -->
                    </form>
                </div>
            </div>
        </div>
        <!-- End of Offcanvas Body: Account form Wrapper -->
        <!-- End of Card Account Form Card-->
    </div>
</div>
<!-- End of Account Form -->