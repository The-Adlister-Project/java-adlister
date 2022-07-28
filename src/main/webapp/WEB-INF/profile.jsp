
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
    <form action="/edit" method="post">
        <button type="submit" name="edit" value="${ad.id}">Edit</button>
    </form>
    <form action="/profile" method="post">
        <button type="submit" name="delete" value="${ad.id}">Delete</button>
    </form>
</c:forEach>

<c:if test="${categoryAds != null}">
    <c:forEach var="ad" items="${categoryAds}">
        <p>${ad.title}</p>
        <p>${ad.description}</p>
    </c:forEach>
</c:if>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
