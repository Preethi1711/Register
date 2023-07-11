<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<style>
body {
  
  color: #FFFFFF;
  background-size: cover;
  background-repeat: no-repeat;
  background-image: url("tree.jpg");
  overflow: hidden;
}
</style>
<body>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@page import="pack2.UserDao,pack1.EditFormBean,pack1.FormBean,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>

<%
String name=(String)session.getAttribute("user"); 
List<FormBean> list=UserDao.getAllRecords();
request.setAttribute("list",list);
EditFormBean ff=UserDao.getRecordByName(name);
int i=ff.getId();

//System.out.println(i);

%>
<c:set var="Income" scope="session" value="<%=i %>"/> 
<table border="1" bordercolor="#FFFFFF" width="90%">
<tr><th>Id</th><th>FirstName</th><th>LastName</th><th>Dob</th><th>Age</th><th>Email</th><th>Gender</th><th>Password</th><th>ConfirmPassword</th></tr>
<c:forEach items="${list}" var="u">
	<tr>
	<td>${u.getId()}</td>
	<td>${u.getFirstName()}</td>
	<td>${u.getLastName()}</td>
	<td>${u.getDob()}</td>
	<td>${u.getAge()}</td>
	<td>${u.getEmail()}</td>
	<td>${u.getGender ()}</td>
	<td>${u.getPassword1()}</td>
	<td>${u.getPassword2()}</td>
	<td>
	<c:if test="${Income == u.getId()||Income==1}">  
	<button type="submit" onclick="location.href='editform.jsp?id=${u.getId()}';">Edit</c:if> </td>
	<td>
	<c:if test="${Income == u.getId()||Income==1}">
	<c:if test="${u.getId()!=1}"> 
	<button type="submit" onclick="location.href='deleteuser.jsp?id=${u.getId()}';">Delete</c:if></c:if></td>
	<td>
	<button type="submit" onclick="location.href='viewuserdetails.jsp?id=${u.getId()}';">View</td>
	
	</tr>
	
</c:forEach>
</table>
<button type="submit" onclick="location.href='register.jsp';">Add New User</button>
<button type="submit" onclick="location.href='index.html';">Login</button>


</body>
</html>