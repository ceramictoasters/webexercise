<%@include file="verifyLogin.jsp" %>
<html>
<head>
<title></title>
</head>
<body>
<%@page language="java" import="edu.csbsju.csci230.*,java.util.ArrayList"%>
Hello User 
<%UserController uc = (UserController)session.getAttribute("UserControllerInstance");%>
<%=uc.getCurrentUser().getUsername() %>
<table style="text-align: left; width: 100%;" border="1" cellpadding="2"
cellspacing="2">
<tbody>
<tr align="center">
<td colspan="8" rowspan="1" style="vertical-align: top;"><a
href="Add.jsp">ADD A USER</a>
</td>
</tr>
<tr>
<td style="vertical-align: top;">
Edit</td>
<td style="vertical-align: top; text-align: center;">Full name
</td>
<td style="vertical-align: top; text-align: center;">Username
</td>
<td style="vertical-align: top; text-align: center;">Password
</td>
<td style="vertical-align: top; text-align: center;">Type
</td>
<td style="vertical-align: top; text-align: center;">Status
</td>
<td style="vertical-align: top;">Delete
</td>
</tr>
<%
ArrayList<User> users = uc.getAllUsers();
int numUsers = users.size();
for (int i = 0; i < numUsers; i++){
%>
<tr>
<td style="vertical-align: top;">
<form method="post" action="Edit.jsp" name="Edit">
    <input name="Edit" value="Edit" type="submit">
    <input name="Username" value=<%=users.get(i).getUsername() %> type="hidden">
    <input name="Password" value=<%=users.get(i).getPassword() %> type="hidden">
    <input name="FirstName" value=<%=users.get(i).getfName() %> type="hidden">
    <input name="LastName" value=<%=users.get(i).getlName() %> type="hidden">
    <input name="Status" value=<%=users.get(i).getStatus() %> type="hidden">
    <input name="Type" value=<%=users.get(i).getType() %> type="hidden">
</form>
</td>
<td style="vertical-align: top;">
<%=users.get(i).getfName() + users.get(i).getlName() %>
</td>
<td style="vertical-align: top;">
<%=users.get(i).getUsername() %>
</td>
<td style="vertical-align: top;">
<%=users.get(i).getPassword() %>
</td>
<td style="vertical-align: top;">
<%=users.get(i).getType() %>
</td>
<td style="vertical-align: top;">
<%=users.get(i).getStatus() %>
</td>
<td style="vertical-align: top;">
<form method="post" action="Delete.jsp" name="Delete">
    <input name="Delete" value="Delete" type="submit">
    <input name="Username" value=<%=users.get(i).getUsername() %> type="hidden">
</form>
</td>
</tr>
<%} %>
</tbody>
</table>
</body>
</html>
