<%@page import="pack2.UserDao,pack1.EditFormBean"%>
<jsp:useBean id="u" class="pack1.FormBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%

String name=(String)session.getAttribute("user"); 
EditFormBean ff=UserDao.getRecordByName(name);
int i=ff.getId();

UserDao.delete(u);

if(i==1){
	response.sendRedirect("registerlist.jsp");
}
else{
	response.sendRedirect("index.html");
}







%>