
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Searched Ad"/>
    </jsp:include>
</head>
<body>
    <h1>Update Ad</h1>
    <h3>${ad.title}</h3>
    <h3>${ad.description}</h3>
    <form action="/updatead" method="POST">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <input type="submit" class="btn btn-block btn-primary" value="SubmitChanges" name="edit-ad">
    </form>
</body>
</html>
