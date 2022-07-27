
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
</div>

<c:forEach var="ad" items="${ads}">
    <h3>${ad.title}</h3>
    <form action="/profile" method="post">
            <button type="submit" class="btn btn-success" name="editButton" value="${ad.id}">Edit</button>
    </form>

<%--    <a class="btn btn-primary" href="/updatead" role="button">Link</a>--%>


<%--    <a class="btn btn-primary" href="/updatedad" role="button">Link</a>--%>

    <%--        <button type="button" class="btn btn-danger">Delete</button>--%>

</c:forEach>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
