<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="<c:url value="/changeStyle"/>?style=france"><img class="flag" src="img/fra.png"></a>
        <a class="navbar-brand" href="<c:url value="/changeStyle"/>?style=jamaique"><img class="flag" src="img/jam.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="<c:url value="/home"/>">Home</a>
                </li>
                <c:if test="${clientConnecte ne null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/mon-compte"/>">Mon compte</a>
                    </li>
                </c:if>
                <c:if test="${clientConnecte eq null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/login"/>">Login</a>
                    </li>
                </c:if>
                <c:if test="${clientConnecte eq null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/inscription"/>">Inscription</a>
                    </li>
                </c:if>
                <c:if test="${clientConnecte ne null}">
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value="/log-out"/>">Log out </a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

