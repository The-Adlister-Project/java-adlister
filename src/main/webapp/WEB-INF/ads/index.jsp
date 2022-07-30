<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <style>
        <%@include file="/WEB-INF/css/styles.css" %>
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <c:if test="${user == \"null\"}">
        <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
    </c:if>
    <c:if test="${user != \"null\"}">
        <jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>
    </c:if>
</head>
<body id="viewAd">
<h1 class="main-index-title">Here Are all the ads!</h1><br>
    <div class="grid-area-2">
        <c:forEach var="ad" items="${ads}">
            <div class="card-body">
                <form action="/soloAd" method="post">
                <h5 class="card-title">${ad.title}</h5>
                <h6>Description:</h6>
                <p class="card-text">${ad.description}</p>
                <button class="viewBtn" name="ad_id" value="${ad.id}" type="submit"><i
                        class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
        </c:forEach>
    </div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%--<body id="register">--%>
<%--<div class="register">--%>
<%--    <div class="register-screen">--%>
<%--        <div class="app-title">--%>
<%--            <h1>Please fill in your information.</h1>--%>
<%--        </div>--%>
<%--        <form action="/register" method="post">--%>
<%--            <div class="register-form">--%>
<%--                <div class="control-group">--%>
<%--                    <input id="username" name="username" class="form-control" type="text">--%>
<%--                    <label for="username">Username</label>--%>
<%--                </div>--%>
<%--                <div class="control-group">--%>
<%--                    <input id="email" name="email" class="form-control" type="text">--%>
<%--                    <label for="email">Email</label>--%>
<%--                </div>--%>
<%--                <div class="control-group">--%>
<%--                    <input id="password" name="password" class="form-control" type="password">--%>
<%--                    <label for="password">Password</label>--%>
<%--                </div>--%>

<%--                <div class="control-group">--%>
<%--                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">--%>
<%--                    <label for="confirm_password">Confirm Password</label>--%>
<%--                </div>--%>
<%--                <input type="submit" class="btn btn-primary btn-block">--%>
<%--            </div>--%>
<%--        </form>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>