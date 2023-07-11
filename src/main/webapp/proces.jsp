<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%! 
  
%>
<%@page import="pack2.UserDao" %>
<jsp:useBean id="formHandler" class="pack1.FormBean" scope="request">
<jsp:setProperty name="formHandler" property="*"/>
</jsp:useBean>
<% 
if(formHandler.validate())
{
	int i=UserDao.save(formHandler);
	
	   if (i > 0) {
%>
    <jsp:forward page="index.html"/>
<%
   }  else {
%>
    <jsp:forward page="register.jsp"/>
<%
   } 
} else {
%>
    <jsp:forward page="register.jsp"/>
<%
}
%>

