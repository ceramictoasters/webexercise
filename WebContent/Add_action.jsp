<%@include file="verifyLogin.jsp" %>
<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%
UserController uc = (UserController)session.getAttribute("UserControllerInstance");
User newUser = new User(request.getParameter("FirstName"), request.getParameter("LastName"),
						request.getParameter("Username"), request.getParameter("Password"),
						request.getParameter("Type").charAt(0), request.getParameter("Status").charAt(0));
uc.addUser(newUser);
response.sendRedirect("Menu.jsp");
%>