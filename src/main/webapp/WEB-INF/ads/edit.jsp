
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Ad"/>
    </jsp:include>
    <style>
        <%@include file="/WEB-INF/css/styles.css" %>
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body id="editBody">
<jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>
<div class="edit">
    <div class="edit-screen">
        <div class="app-title">
            <h1>Edit this Ad</h1>
        </div>
        <form action="/edit" method="post">
            <div class="edit-form">
                <div class="control-group">
                    <label for="title" style="text-align: center">Title</label>
                    <input id="title" name="title" class="form-control" type="text">
                </div>
                <div class="control-group">
                    <input class="form-check-input" type="checkbox" value="1" id="cat1" name="cat1">
                    <label class="form-check-label" for="cat1">For Sale</label>
                </div>
                <div class="control-group">
                    <input class="form-check-input" type="checkbox" value="2" id="cat2" name="cat2">
                    <label class="form-check-label" for="cat2">Jobs</label>
                </div>
                <div class="control-group">
                    <input class="form-check-input" type="checkbox" value="3" id="cat3" name="cat3">
                    <label class="form-check-label" for="cat3">Antiques</label>
                </div>
                <div class="control-group">
                    <input class="form-check-input" type="checkbox" value="4" id="cat4" name="cat4">
                    <label class="form-check-label" for="cat4">Automotive</label>
                </div>
                <div class="control-group">
                    <input class="form-check-input" type="checkbox" value="5" id="cat5" name="cat5">
                    <label class="form-check-label" for="cat5">Looking For</label>
                </div>
                <div class="control-group">
                    <label for="description">Description</label>
                    <textarea id="description" name="description" class="form-control" type="text"></textarea>
                </div>
                <button type="submit" name="editButton" class="btn btn-block btn-primary" value="${edit_id}">Edit
                </button>
            </div>
        </form>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

