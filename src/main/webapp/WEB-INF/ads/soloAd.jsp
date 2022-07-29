<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Searched Ad"/>
  </jsp:include>
</head>
<body>

<c:if test="${user == null}">
  <jsp:include page="/WEB-INF/partials/navbar.jsp"/>
</c:if>

<c:if test="${user != null}">
  <jsp:include page="/WEB-INF/partials/profile-nav.jsp"/>
</c:if>


<div class="container">
  <h2><c:out value="${ad.title}" /></h2>
  <h5>User Id: <c:out value="${ad.userId}" />, User Name <c:out value="${ad_user.username}" /></h5>
  <h3><c:out value="${ad.description}" /></h3>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>