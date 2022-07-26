<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>


<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>
    <form action="/profile" method="POST">
        <button type="submit" class="btn btn-primary" name="update">Edit Profile</button>
    </form>
</div>

<c:forEach var="ad" items="${ads}">
    <h3>${ad.title}</h3>
</c:forEach>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
