<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<<<<<<< HEAD

<div class="container">
    <h1>Here Are all the ads!</h1>

=======
<div class="container">
    <h1>Here Are all the ads!</h1>
>>>>>>> 0fe998e2e780fb30012146401c33b30025af543b
    <form action="/soloAd" method="post">
        <c:forEach var="ad" items="${ads}">
            <div class="col-md-6">
                <h2>${ad.title}</h2>
                <p>${ad.description}</p>
                <button name="ad_id" value="${ad.id}" type="submit">View Ad</button>
            </div>
        </c:forEach>
    </form>
<<<<<<< HEAD

=======
>>>>>>> 0fe998e2e780fb30012146401c33b30025af543b
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>