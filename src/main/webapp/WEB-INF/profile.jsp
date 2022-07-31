<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <style>
        <%@include file="/WEB-INF/css/styles.css" %>
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
    <jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>
</head>
<body>
<div class="grid">
    <div class="cols grid-col1"><h1>Welcome, ${sessionScope.user.username}!</h1>

        <%--TODO: ADD PROFILE IMAGE IN THIS DIV BELOW--%>

        <div class="grid-item1">
            <c:if test="${user.url == null}">
                <img src="/images/default.webp" alt="default image">
            </c:if>
            <c:if test="${user.url != null}">
                <img src="${sessionScope.user.url}" alt="profile image">
            </c:if>
        </div>
        <div class="inner-box" style="font-size: 18px; padding-right: 5px">Hello ${sessionScope.user.username}. Welcome
            back! This is your profile page, you can see, edit and delete your Ads here.
            <br>You can also use the edit profile link to edit your profile information. Enjoy your stay!
        </div>
    </div>
    <section class="grid-area-2">
        <c:forEach var="ad" items="${ads}">
            <div class="card-body">
                <form action="/edit" method="post">
                    <h5 class="card-title">${ad.title}</h5>
                    <h6>Description:</h6>
                    <p class="card-text">${ad.description}</p>
                    <div id="container">
                        <form action="/edit" method="post">
                            <button class="btnEdit" type="submit" name="edit" value="${ad.id}"><i
                                    class="fa-solid fa-pen-to-square"></i></button>
                        </form>
                        <form action="/profile" method="post">
                            <button class="btnEdit" type="submit" name="delete" value="${ad.id}"><i
                                    class="fa-solid fa-trash"></i></button>
                        </form>
                    </div>
                </form>
            </div>
        </c:forEach>
        <c:if test="${categoryAds != null}">
            <c:forEach var="ad" items="${categoryAds}">
                <div class="card-body">
                    <h5 class="card-title"><c:out value="${ad.title}"/></h5>
                    <h5>Description:</h5>
                    <p><c:out value="${ad.description}"/></p>
                </div>
            </c:forEach>
        </c:if>
    </section>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


<%--TODO:
            DO NOT DELETE THIS UNTIL SITE HAS BEEN FULLY TESTED
--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Your Profile"/>--%>
<%--    </jsp:include>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>--%>

<%--<div class="container">--%>
<%--    <h1>Welcome, <c:out value="${sessionScope.user.username}" />!</h1>--%>
<%--</div>--%>

<%--<c:forEach var="ad" items="${ads}">--%>
<%--    <h3><c:out value="${ad.title}" /></h3>--%>
<%--    <form action="/edit" method="post">--%>
<%--        <button type="submit" name="edit" value="${ad.id}">Edit</button>--%>
<%--    </form>--%>
<%--    <form action="/profile" method="post">--%>
<%--        <button type="submit" name="delete" value="${ad.id}">Delete</button>--%>
<%--    </form>--%>
<%--</c:forEach>--%>

<%--<c:if test="${categoryAds != null}">--%>
<%--    <c:forEach var="ad" items="${categoryAds}">--%>
<%--        <p><c:out value="${ad.title}" /></p>--%>
<%--        <p><c:out value="${ad.description}" /></p>--%>
<%--    </c:forEach>--%>
<%--</c:if>--%>


<%--<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>--%>
<%--</body>--%>
<%--</html>--%>
