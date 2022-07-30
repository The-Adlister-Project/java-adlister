<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style><%@include file="/WEB-INF/css/styles.css"%></style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body id="login">
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="login">
    <div class="login-screen">
        <div class="app-title">
            <h1>Login</h1>
        </div>
        <form action="/login" method="POST">
            <div class="login-form">
                <div class="control-group">
                    <input type="text" class="login-field" name="username" placeholder="username" id="username">
                    <label class="login-field-icon fui-user" for="username"></label>
                </div>
                <div class="control-group">
                    <input type="password" class="login-field" name="password" placeholder="password" id="password">
                    <label class="login-field-icon fui-lock" for="password"></label>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Log In">
            </div>
        </form>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>


<%--TODO:
            DO NOT DELETE THIS UNTIL SITE HAS BEEN FULLY TESTED
--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Please Log In" />--%>
<%--    </jsp:include>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>
<%--<div class="container">--%>
<%--    <h1>Please Log In</h1>--%>
<%--    <form action="/login" method="POST">--%>
<%--        <div class="form-group">--%>
<%--            <label for="username">Username</label>--%>
<%--            <input id="username" name="username" class="form-control" type="text">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="password">Password</label>--%>
<%--            <input id="password" name="password" class="form-control" type="password">--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-primary btn-block" value="Log In">--%>
<%--    </form>--%>
<%--</div>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>