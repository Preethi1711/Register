<%@ page language="java" %>
<%@ page import="java.util.*" %>
<%! 
  
%>
<%@page import="pack2.UserDao" %>
<jsp:useBean id="formHandler" class="pack1.ValidateBean" scope="request">
<jsp:setProperty name="formHandler" property="*"/>
</jsp:useBean>
<%   
  
String name=request.getParameter("email");    
session.setAttribute("user",name); 
System.out.println(name);
  
%> 
<% 
System.out.println("AAAAA");
if(formHandler.validateuser())
{System.out.println("BBBB");

	UserDao dao=new UserDao();
	System.out.println("CCCC");

	boolean i=dao.validatelogin(formHandler);
	System.out.println("DDDDD" +i);

	   if (i ) {
%>
    <jsp:forward page="registerlist.jsp"/>
<%System.out.println("EEEEE");

   }  else {
%>

    <jsp:forward page="index.html"/>
    
<%
   } 
} else {
%>
    <jsp:forward page="index.html"/>
<%
   

}
%>
