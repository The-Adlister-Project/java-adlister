<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register For Our Site!"/>
    </jsp:include>
    <style><%@include file="/WEB-INF/css/styles.css"%></style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body id="register">
<jsp:include page="partials/navbar.jsp"/>
<div class="register">
    <div class="register-screen">
        <div class="app-title">
            <h1>Please fill in your information.</h1>
        </div>
        <form action="/register" method="post">
            <div class="register-form">
                <div class="control-group">
                    <input id="username" name="username" class="form-control" type="text">
                    <label for="username">Username</label>
                </div>
                <div class="control-group">
                    <input id="email" name="email" class="form-control" type="text">
                    <label for="email">Email</label>
                </div>
                <div class="control-group">
                    <input id="password" name="password" class="form-control" type="password">
                    <label for="password">Password</label>
                </div>

                <div class="control-group">
                    <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                    <label for="confirm_password">Confirm Password</label>
                </div>
                <input type="submit" class="btn btn-primary btn-block">
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



<%--TODO:
            DO NOT DELETE THIS UNTIL SITE HAS BEEN FULLY TESTED
--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Register For Our Site!" />--%>
<%--    </jsp:include>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="partials/navbar.jsp" />--%>
<%--<div class="container">--%>
<%--    <h1>Please fill in your information.</h1>--%>
<%--    <form action="/register" method="post">--%>
<%--        <div class="form-group">--%>
<%--            <label for="username">Username</label>--%>
<%--            <input id="username" name="username" class="form-control" type="text">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="email">Email</label>--%>
<%--            <input id="email" name="email" class="form-control" type="text">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="password">Password</label>--%>
<%--            <input id="password" name="password" class="form-control" type="password">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="confirm_password">Confirm Password</label>--%>
<%--            <input id="confirm_password" name="confirm_password" class="form-control" type="password">--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-primary btn-block">--%>
<%--    </form>--%>
<%--</div>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>