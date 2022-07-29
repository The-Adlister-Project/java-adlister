<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: kjorgeron0819
  Date: 7/29/22
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Error Page" />
</jsp:include>
<body>
<%@include file="partials/navbar.jsp"%>
<h1 style="text-align: center">YOU ARE HERE DUE TO AN ERROR IN YOUR INPUTS! TRY AGAIN WITH DIFFERENT INFORMATION</h1>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
