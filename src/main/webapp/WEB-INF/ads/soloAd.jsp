<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<<<<<<< HEAD
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Searched Ad"/>
    </jsp:include>
=======
  <jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Searched Ad"/>
  </jsp:include>
>>>>>>> 0fe998e2e780fb30012146401c33b30025af543b
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container">
<<<<<<< HEAD
    <h2>${ad.title}</h2>
    <h5>User Id: ${ad.userId}, User Name ${user.username}</h5>
    <h3>${ad.description}</h3>
=======
  <h2>${ad.title}</h2>
  <h5>User Id: ${ad.userId}, User Name ${user.username}</h5>
  <h3>${ad.description}</h3>
>>>>>>> 0fe998e2e780fb30012146401c33b30025af543b
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>