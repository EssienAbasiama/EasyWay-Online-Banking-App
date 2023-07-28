<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../css/bootstrap/bootstrap.css">
    <link rel="stylesheet" href="../css/fontawesome/css/all.css">

    <link rel="stylesheet" href="../css/main.css">
    <script src="../js/bootstrap.bundle.js"></script>


    <title>Dashboard</title>
</head>

<body>
    <c:import url = "component/incl/header.jsp"/>
    <%--Transact OffCanvas: Pull From the Left--%>
    <c:import url = "component/transact_offcanvas.jsp"/>
    <%--Add Account OffCanvas: pulls from the Right--%>
    <c:import url = "component/add_account_offcanvas.jsp"/>
<%--    Container--%>
    <div class="container">
        <%--Display Message--%>
        <c:if test="${SUCCESS != null}">
            <div class="alert alert-success text-center border border-success">
                <b>${SUCCESS}</b>
            </div>
        </c:if>
        <%--Display Message--%>
        <c:if test="${error != null}">
            <div class="alert alert-danger text-center border border-danger">
                <b>${error}</b>
            </div>
        </c:if>
    </div>
<%--    End Of Container--%>
    <c:choose>
        <c:when test="${fn:length(userAccounts) > 0}">
        <%--Display Account--%>
            <c:import url = "component/accounts_display.jsp"/>
        </c:when>
        <c:otherwise>
        <%--Don't Display Account--%>
    <c:import url="component/no_accounts_display.jsp"/>
        </c:otherwise>
    </c:choose>

<%--Footer --%>
    <c:import url = "component/incl/footer.jsp"/>
