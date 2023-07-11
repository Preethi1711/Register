<jsp:useBean id="formHandler" class="pack1.EditFormBean" scope="request"/>
<html>

<%!

public static String replacer(String emp, String val) {
    if (emp==null) 
    { 
       return val; // change null to empty string
    } else {
       return emp; // return unchanged
    }
   }


%>
<style>
body {
  
  color: #FFFFFF;
  background-size: cover;
  background-repeat: no-repeat;
  background-image: url("tree.jpg");
  overflow: hidden;
}</style>
<body>
<%@page import="pack2.UserDao,pack1.EditFormBean"%>
<%!

public static String replacer(String emp) {
    if (emp==null) 
    { 
       return ""; // change null to empty string
    } else {
       return emp; // return unchanged
    }
   }


%>
<%
String id=request.getParameter("id");
EditFormBean f=UserDao.getRecordById1(Integer.parseInt(id));

%>
<center>
<table border="1">
<th colspan=2>
<font size=6>User Information</font><br>

</br>
</th>
<font size=5>
<tr>
<td><label style="height:40px; width:200px;">First Name</label></td>
<td style="height:40px; width:200px;"><b><%= f.getFirstName()%></b></td>
</tr>

<tr>
<td><label style="height:40px; width:200px;" > Last Name</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getLastName())%></b></td>
</tr>

<tr>
<td><label style="height:40px; width:200px;">Date Of Birth</label></td>
<td style="height:40px; width:200px;"><b><%= f.getDob()%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;">Age</label></td>
<td style="height:40px; width:200px;"><b><%= f.getAge()%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;">Email</label></td>
<td style="height:40px; width:200px;"><b><%= f.getEmail()%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >Phone number</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getPhonenumber())%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;">Password</label></td>
<td style="height:40px; width:200px;"><b><%= f.getPassword1()%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;">Confirm Password</label></td>
<td style="height:40px; width:200px;"><b><%= f.getPassword2()%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >Address Line1</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getAddress1())%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >Address Line2</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getAddress2())%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;">Gender</label></td>
<td style="height:40px; width:200px;"><b><%= f.getPassword2()%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >City</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getCity())%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >Pincode</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getPincode())%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >State</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getState())%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >Country</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getCountry())%></b></td>

</tr>
<tr>
<td><label style="height:40px; width:200px;" >Blood Group</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getBloodgroup())%></b></td>

</tr>
<tr>
<td><label style="height:40px; width:200px;" >Salary</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getSalary())%></b></td>
</tr>
<tr>
<td><label style="height:40px; width:200px;" >Skills</label></td>
<td style="height:40px; width:200px;"><b><%= replacer(f.getSkills())%></b></td>
</tr>
</font>
</table>
</center>
</body>
</html>

