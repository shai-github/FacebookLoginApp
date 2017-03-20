<%@page import="com.facebookLogin.connection.FacebookConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@page import="java.net.URLEncoder" %>
<%
    String fbUrl=new FacebookConnection().getFacebookLoginUrl();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Facebook Login Example</title>
</head>
<body>
  <h1>Facebook Login Example</h1>
  <a href="<%=fbUrl %>">Facebook Login</a>
</body>
</html>