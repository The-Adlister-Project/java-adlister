<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <style>
        <%@include file="/WEB-INF/css/styles.css" %>
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body id="create">
<jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>
<div class="create">
    <div class="create-screen">
        <div class="app-title">
            <h1>Create a new Ad</h1>
        </div>
        <form action="/ads/create" method="post">

            <div class="create-form">
                <div class="control-group">
                    <label for="title">Title</label>
                    <input id="title" name="title" class="form-control" type="text">
                </div>
                <div class="control-group">
                    <input type="checkbox" id="cat1" name="cat1" value="1">
                    <label for="cat1"> For Sale</label>
                    <input type="checkbox" id="cat2" name="cat2" value="2">
                    <label for="cat2">Jobs</label>
                    <input type="checkbox" id="cat3" name="cat3" value="3">
                    <label for="cat3"> Looking For</label>
                    <input type="checkbox" id="cat4" name="cat4" value="4">
                    <label for="cat4">Automotive</label>
                    <input type="checkbox" id="cat5" name="cat5" value="5">
                    <label for="cat5">Looking For</label>
                </div>
                <div class="control-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control" type="text"></textarea>
                </div>
                <input type="submit" class="btn btn-primary btn-block" value="Create">
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
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Create a new Ad"/>--%>
<%--    </jsp:include>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>--%>
<%--<div class="container">--%>
<%--    <h1>Create a new Ad</h1>--%>
<%--    <form action="/ads/create" method="post">--%>
<%--        <div class="form-group">--%>
<%--            <label for="title">Title</label>--%>
<%--            <input id="title" name="title" class="form-control" type="text">--%>
<%--        </div>--%>

<%--        <div class="form-check">--%>
<%--            <input class="form-check-input" type="checkbox" value="1" id="cat1" name="cat1">--%>
<%--            <label class="form-check-label" for="cat1">--%>
<%--                For Sale--%>
<%--            </label>--%>
<%--        </div>--%>
<%--        <div class="form-check">--%>
<%--            <input class="form-check-input" type="checkbox" value="2" id="cat2" name="cat2">--%>
<%--            <label class="form-check-label" for="cat1">--%>
<%--                Jobs--%>
<%--            </label>--%>
<%--        </div>--%>
<%--        <div class="form-check">--%>
<%--            <input class="form-check-input" type="checkbox" value="3" id="cat3" name="cat3">--%>
<%--            <label class="form-check-label" for="cat1">--%>
<%--                Antiques--%>
<%--            </label>--%>
<%--        </div>--%>
<%--        <div class="form-check">--%>
<%--            <input class="form-check-input" type="checkbox" value="4" id="cat4" name="cat4">--%>
<%--            <label class="form-check-label" for="cat1">--%>
<%--                Automotive--%>
<%--            </label>--%>
<%--        </div>--%>
<%--        <div class="form-check">--%>
<%--            <input class="form-check-input" type="checkbox" value="5" id="cat5" name="cat5">--%>
<%--            <label class="form-check-label" for="cat1">--%>
<%--                Looking For--%>
<%--            </label>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label for="description">Description</label>--%>
<%--            <textarea id="description" name="description" class="form-control" type="text"></textarea>--%>
<%--        </div>--%>
<%--        <input type="submit" class="btn btn-block btn-primary">--%>
<%--    </form>--%>
<%--</div>--%>
<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>