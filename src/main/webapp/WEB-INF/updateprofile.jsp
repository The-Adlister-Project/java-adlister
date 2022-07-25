<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Your Profile</title>
</head>
<form action="/updateprofile" method="POST">
  <div class="form-group">
    <label for="username">Username</label>
    <input id="username" name="username" class="form-control" type="text">
  </div>
  <div class="form-group">
    <label for="email">email</label>
    <input id="email" name="email" class="form-control" type="text">
  </div>
  <div class="form-group">
    <label for="password">Password</label>
    <input id="password" name="password" class="form-control" type="password">
  </div>
  <input type="submit" value="Submit Changes" />
</form>
</body>
</html>