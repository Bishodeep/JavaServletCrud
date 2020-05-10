<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <% HttpSession sessionuser = request.getSession(false);
String user = (String) sessionuser.getAttribute("username");
String rolename = (String) sessionuser.getAttribute("rolename");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accommodation Portal</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
    <a class="navbar-brand" href="#">Welcome <%=user%></a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item active">
        <a class="nav-link" href="welcome">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="myroom">My Room</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0"  action="logout"  method="post">
      <button class="btn btn-outline-default my-2 my-sm-0" type="submit">Logout</button>
    </form>
  </div>
</nav>
</body>
</html>