<%@include file="verifyLogin.jsp" %>
<%@page language="java" import="edu.csbsju.csci230.*,java.util.*"%>

<%
UserController uc = (UserController)session.getAttribute("UserControllerInstance");
User delUser = uc.getSpecificUser(request.getParameter("Username"));
uc.deleteUser(delUser);
response.sendRedirect("Menu.jsp?Username="+request.getParameter("Username")+"&ThisUsername="+request.getParameter("ThisUsername"));
%>