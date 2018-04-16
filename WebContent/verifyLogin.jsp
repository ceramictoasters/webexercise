<%@page language="java" import="edu.csbsju.csci230.*"%>
<%UserController usercontr = (UserController)session.getAttribute("UserControllerInstance");
if (usercontr == null || !(usercontr.isLoggedIn())){
	response.sendRedirect("index.jsp?Error=-4");
	return;
}
%>