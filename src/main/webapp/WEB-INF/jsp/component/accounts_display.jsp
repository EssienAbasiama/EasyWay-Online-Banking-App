<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>--%>

<!-- Container -->
<div class="container d-flex">
    <button id="add-account-btn" class="btn btn-primary btn-lg" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight"><i class="fa fa-credit-card"></i> Add new Account</button>
    <button id="Transact-btn" class="btn ms-auto btn-lg" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample"><i class="fa fa-wallet"></i>
        Transact
    </button>


</div>
<!--End Of Container -->
<!-- Total Account Balance -->
<div class="container d-flex py-3">
    <h2 class="me-auto">Total Account</h2>
    <h2 class="ms-auto">
        <c:if test="${requestScope.totalBalance != null}">
            <c:out value="${totalBalance}"/>
        </c:if>
    </h2>
</div>
<!-- End of Total Account Balance -->
<!--    Accordion Menu Container -->
<div class="container">
<%--    Accordion Menu / Drop Down--%>
    <c:if test="${requestScope.userAccounts != null}">
        <c:forEach items="${requestScope.userAccounts}" var="account">
            <div class="accordion accordion-flush" id="accordionFlushExample">
                <div class="accordion-item">
                    <h2 class="accordion-header" id="flush-headingOne">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-${account.account_Id}" aria-expanded="false" aria-controls="flush-collapseOne">
                            ${account.account_name}
                        </button>
                    </h2>
                    <div id="flush-${account.account_Id}" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
<%--                            Account Details List--%>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item d-flex">Account Name <span class="ms-auto"><b>${account.account_name}</b></span></li>
                                <li class="list-group-item d-flex">Account Number <span class="ms-auto"><b>${account.account_number}</b></span></li>
                                <li class="list-group-item d-flex">Account Type <span class="ms-auto"><b>${account.account_type}</b></span></li>
                                <li class="list-group-item d-flex">Account Balance <span class="ms-auto"><b>${account.balance}</b></span></li>
                                <li class="list-group-item d-flex">Created at <span class="ms-auto"><b>${account.created_at}</b></span></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </c:if>
    </div>
<!--   End of Container Accordion Menu Container -->