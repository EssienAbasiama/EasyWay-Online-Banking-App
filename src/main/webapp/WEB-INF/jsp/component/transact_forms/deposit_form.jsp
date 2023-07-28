<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<!-- Card: Deposit Card -->
<div class="card deposit-card">
    <!-- Card Body -->
    <div class="card-body">
        <!-- Deposit Form -->
        <form action="/transact/deposit" method="post" class="deposit-form">
            <!-- Form Group -->
            <div class="form-group mb-2">
                <label>Enter Deposit Amount</label>
                <input type="text" name="deposit_amount" class="form-control" placeholder="Enter Deposit amount">
            </div>
            <!--End of Form Group -->
            <!-- Form Group -->
            <div class="form-group">
                <label>Select Account</label>
                <!-- Select Account Option -->
                <select name="account_id" class="form-control" >
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
            <!--End of Form Group -->
            <!-- Form Group -->
            <div class="form-group my-2">
                <button class="btn btn-md transact-btn">Deposit</button>
            </div>
            <!--End of Form Group -->
        </form>
    </div>
    <!--End Card Body -->
</div>
<!-- End Card Deposit -->