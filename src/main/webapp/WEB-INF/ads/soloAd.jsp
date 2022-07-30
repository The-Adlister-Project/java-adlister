<%--TODO:
            YOU HAVE TO STYLE THIS PAGE HOW THE INFORMATION IS.
            THIS PAGE WILL NOT WORK ON THE BACK END IF YOU CHANGE ANY OF THIS DATA
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Searched Ad"/>
    </jsp:include>
    <style>
        <%@include file="/WEB-INF/css/styles.css" %>
    </style>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body id="soloBody">

<c:if test="${user == null}">
    <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</c:if>

<c:if test="${user != null}">
    <jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>
</c:if>


<div class="soloAd">
    <div class="soloAd-screen">
        <div class="app-title" style="background-color: #80A6BE; color: white">
            <h1>Here is the selected ad!</h1>
        </div>
        <h2>Title: <c:out value="${ad.title}"/></h2>
        <h5>User Name: <c:out value="${ad_user.username}"/></h5>
        <h3>Description: <c:out value="${ad.description}"/></h3>
        <c:forEach items="${categories}" var="category">
        <h6>Category:<c:out value="${category.name}"/></h6>
        </c:forEach>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<%--TODO: THIS FOR EACH LOOP GOES AFTER THE AD INFORMATION--%>
<%--<c:forEach items="${categories}" var="category">--%>
<%--  <h6>${category.name}</h6>--%>
<%--</c:forEach>--%>