<%--TODO: BUTTON DOES NOT SHOW UP HERE JUST LIKE ON PROFILE PAGE --%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <jsp:include page="partials/head.jsp">
    <jsp:param name="title" value="Update your Profile!"/>
  </jsp:include>
  <style><%@include file="/WEB-INF/css/styles.css"%></style>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap" rel="stylesheet">
</head>
<body id="update">
<jsp:include page="partials/profile-nav.jsp"/>
<div class="update">
  <div class="update-screen">
    <div class="app-title">
      <h1>Update your profile!</h1>
    </div>
    <form action="/update" method="post">
      <div class="update-form">
        <div class="control-group">
          <input id="username" name="username" class="form-control" type="text">
          <label for="username">Username</label>
        </div>
        <div class="control-group">
          <input id="email" name="email" class="form-control" type="text">
          <label for="email">Email</label>
        </div>
        <div class="control-group">
          <input id="password" name="password" class="form-control" type="password">
          <label for="password">Password</label>
        </div>
        <button class="btnUpdate" type="submit" name="update" ><i class="fa-solid fa-wrench"></i></button>
      </div>
    </form>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>


<%--TODO:
            DO NOT DELETE THIS UNTIL SITE HAS BEEN FULLY TESTED
--%>

<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--  <title>Edit Your Profile</title>--%>
<%--</head>--%>
<%--<form action="/update" method="POST">--%>
<%--  <div class="form-group">--%>
<%--    <label for="username">Username</label>--%>
<%--    <input id="username" name="username" class="form-control" type="text">--%>
<%--  </div>--%>
<%--  <div class="form-group">--%>
<%--    <label for="email">email</label>--%>
<%--    <input id="email" name="email" class="form-control" type="text">--%>
<%--  </div>--%>
<%--  <div class="form-group">--%>
<%--    <label for="password">Password</label>--%>
<%--    <input id="password" name="password" class="form-control" type="password">--%>
<%--  </div>--%>
<%--  <input type="submit" value="Submit Changes" />--%>
<%--</form>--%>
<%--</body>--%>
<%--</html>--%>