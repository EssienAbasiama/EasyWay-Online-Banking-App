<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>

<!-- Card: Payment Card -->
<div class="card payment-card">
    <!-- Card Body -->
    <div class="card-body">
<%--       Form--%>
        <form method="post" action="/transact/payment">
            <!-- Form Group -->
            <div class="form-group mb-2">
                <label>Account Holder . Beneficiary Name</label>
                <input type="text" name="beneficiary" class="form-control" placeholder="Enter Account holder / Beneficiary">
            </div>
            <!--End of Form Group -->
            <!-- Form Group -->
            <div class="form-group mb-2">
                <label >Account Holder . Beneficiary Number</label>
                <input type="text" name="account_number" class="form-control" placeholder="Enter Beneficiary Accunt No">
            </div>
            <!--End of Form Group -->

            <!-- Form Group -->
            <div class="form-group">
                <label >Select Account</label>
                <!-- Select Account Option -->
                <select name="account_id" class="form-control">
                    <option value="">-- Select Account --</option>
                    <c:if test="${userAccounts != null}">
                        <c:forEach items="${userAccounts}" var="selectAccount">
                            <option value="${selectAccount.account_Id}">${selectAccount.account_name}</option>
                        </c:forEach>
                    </c:if>
                </select>
                <!-- EndSelect Account Option -->
            </div>
            <!-- End Form Group -->

            <!-- Form Group -->
            <div class="form-group mb-2">
                <label >Reference</label>
                <input type="text" name="reference" class="form-control" placeholder="Enter reference">
            </div>
            <!--End of Form Group -->

            <!-- Form Group -->
            <div class="form-group mb-2">
                <label >Enter Payment Amount</label>
                <input type="text" name="payment_amount" class="form-control" placeholder="Enter payment amount">
            </div>
            <!--End of Form Group -->

            <!-- Form Group -->
            <div class="form-group mb-2">
                <button  class="btn btn-md transact-btn">Pay</button>
            </div>
            <!--End of Form Group -->
        </form>
<%--Form Ends--%>
    </div>
    <!--End Card Body -->
</div>
<!-- End Card Payment -->