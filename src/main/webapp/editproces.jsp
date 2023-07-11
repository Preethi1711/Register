<%@ page language="java" %>
<%@ page import="java.util.*" %>


<%@ page import="pack2.UserDao" %>
<jsp:useBean id="formHandler" class="pack1.EditFormBean" scope="request">
<jsp:setProperty name="formHandler" property="*"/>
</jsp:useBean>
<% 
int i = UserDao.update(formHandler);
if (formHandler.validate1()) {

	

	if (i > 0) {
%>
<jsp:forward page="registerlist.jsp"/>
<%
}
}else {
%>
<jsp:forward page="editform.jsp"/>
<%
}
%>