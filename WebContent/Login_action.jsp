

<%@page language="java" import="edu.csbsju.csci230.*"%>

<%
UserController uc = new UserController();
int result = uc.login(request.getParameter("Username"), request.getParameter("Password"));

if (result != 0){
	response.sendRedirect("index.jsp?Error="+result);
} else {
	session.setAttribute("UserControllerInstance", uc);
	response.sendRedirect("Menu.jsp");
}
	
%>

