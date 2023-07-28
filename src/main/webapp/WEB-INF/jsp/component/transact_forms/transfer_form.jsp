<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>
<!-- Card: transfer Card -->
<div class="card transfer-card">
    <!-- Card Body -->
    <div class="card-body">
<%--Transfer Form--%>
        <form action="/transact/transfer" method="POST">
            <!-- Form Group -->
            <div class="form-group mb-2">
<%--                <label>Select Account</label>--%>
                <!-- Select Account Option -->
                <select name="transfer_from" class="form-control" required>
                    <option value="">-- Transfer From --</option>
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
<%--                <label>Select Account</label>--%>
                <!-- Select Account Option -->
                <select name="transfer_to" class="form-control" required>
                    <option value="">-- Transfer To --</option>
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
                <label for="">Enter transfer Amount</label>
                <input type="text" name="transfer_amount" class="form-control" placeholder="Enter transfer amount" required>
            </div>
            <!--End of Form Group -->
            <!-- Form Group -->
            <div class="form-group mb-2">
                <button class="btn btn-md transact-btn">Transfer</button>
            </div>
            <!--End of Form Group -->

        </form>
<%--        End OF Transfer Form--%>

    </div>
    <!--End Card Body -->
</div>
<!-- End Card Transfer -->
