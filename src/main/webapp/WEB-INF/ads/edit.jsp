<%--TODO:
            YOU HAVE TO STYLE THIS PAGE HOW THE INFORMATION IS.
            THIS PAGE WILL NOT WORK ON THE BACK END IF YOU CHANGE ANY OF THIS DATA
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>
<div class="container">
    <h1>Edit this Ad</h1>
    <form action="/edit" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>

        <%--TODO: START--%>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="1" id="cat1" name="cat1">
            <label class="form-check-label" for="cat1">
                For Sale
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="2" id="cat2" name="cat2">
            <label class="form-check-label" for="cat1">
                Jobs
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="3" id="cat3" name="cat3">
            <label class="form-check-label" for="cat1">
                Antiques
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="4" id="cat4" name="cat4">
            <label class="form-check-label" for="cat1">
                Automotive
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" value="5" id="cat5" name="cat5">
            <label class="form-check-label" for="cat1">
                Looking For
            </label>
        </div>
        <%--TODO: END--%>

        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <button type="submit" name="editButton" class="btn btn-block btn-primary" value="${edit_id}">Edit</button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

