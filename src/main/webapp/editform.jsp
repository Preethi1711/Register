<jsp:useBean id="formHandler" class="pack1.EditFormBean" scope="request"/>  
<!DOCTYPE html>
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

<header>

<script type="text/javascript">


function ageCount(){
var date1 = new Date();
var dob = document.getElementById("date").value;
var date2 = new Date(dob);

    var y1 = date1.getFullYear();
    var y2 = date2.getFullYear();
    var age = y1-y2;
    document.getElementById("agee").value=age;
    return true;
}
</script>



</header>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
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
<%@page import="pack2.UserDao,pack1.EditFormBean"%>

<%
String id=request.getParameter("id");
EditFormBean f=UserDao.getRecordById(Integer.parseInt(id));

%>
<center>
<h1>Edit Form</h1>
<form action="editproces.jsp" method="post">
<input type="hidden" name="id" value="<%=f.getId() %>"/>
<table>
<tr><td>FirstName:</td><td><input type="text" name="firstName" style="height:30px; width:200px;" value="<%= f.getFirstName()%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("firstName")%></font></td></tr>
<tr><td>LastName:</td><td><input type="text" name="lastName" style="height:30px; width:200px;" value="<%= f.getLastName()%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("lastName")%></font></td></tr>
<tr><td>Dob:</td><td><input type="date" id="date" class="form-control" onchange ="ageCount()" name="dob" style="height:30px; width:200px;" value="<%= f.getDob()%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("dob")%></font></td></tr>
<tr><td>Age:</td><td><input type="text" class="form-control" name="age" id="agee" style="height:30px; width:200px;" value="<%= f.getAge()%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("age")%></font></td></tr>
<tr><td>Email:</td><td><input type="email" name="email" style="height:30px; width:200px;" value="<%= f.getEmail()%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("email")%></font></td></tr>
<tr><td>PhoneNumber:</td><td><input type="text" name="phonenumber" style="height:30px; width:200px;" value="<%= replacer(f.getPhonenumber(),formHandler.getPhonenumber())%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("phonenumber")%></font></td></tr>
<tr><td>Password:</td><td><input type="password" name="password1" style="height:30px; width:200px;" value="<%= f.getPassword1()%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("password1")%></font></td></tr>
<tr><td>ConfirmPassword:</td><td><input type="password" name="password2" style="height:30px; width:200px;" value="<%= f.getPassword2()%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("password2")%></font></td></tr>
<tr><td>Address1:</td><td><input type="text" name="address1" style="height:30px; width:200px;" value="<%= replacer(f.getAddress1(),formHandler.getAddress1())%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("address1")%></font></td></tr>
<tr><td>Address2:</td><td><input type="text" name="address2" style="height:30px; width:200px;" value="<%=replacer( f.getAddress2(),formHandler.getAddress2())%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("address2")%></font></td></tr>
<tr><td>Gender:</td><td><input type="radio" name="gender" value="male"<%=formHandler.isRbSelected("male") %>  />Male
 <input type="radio" name="gender" value="female"<%=formHandler.isRbSelected("female") %>  />Female 
<font size=2 color=red><%=formHandler.getErrorMsg("gender")%></font></td></tr>
<tr><td>City:</td><td><input type="text" name="city" style="height:30px; width:200px;" value="<%=replacer( f.getCity(),formHandler.getCity())%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("city")%></font></td></tr>
<tr><td>Pincode:</td><td><input type="text" name="pincode" style="height:30px; width:200px;" value="<%=replacer( f.getPincode(),formHandler.getPincode())%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("pincode")%></font></td></tr>
<tr><td>State:</td><td><input type="text" name="state" style="height:30px; width:200px;" value="<%=replacer( f.getState(),formHandler.getState())%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("state")%></font></td></tr>
<tr><td>Country:</td><td>
<select name="country" style="height:30px; width:200px;">
<option value="<%=f.getCountry()%>"><%=replacer( f.getCountry(),formHandler.getCountry())%> </option>
<option value="India">India</option>
<option value="Pakistan">Pakistan</option>
<option value="Afghanistan">Afghanistan</option>
<option value="Berma">Berma</option>
<option value="Other">Other</option>
</select>
<font size=2 color=red><%=formHandler.getErrorMsg("country")%></font>
</td></tr>
<tr><td>BloodGroup:</td><td>
<select name="bloodgroup"  style="height:30px; width:200px;">
<option value="<%=f.getBloodgroup() %>"><%=replacer( f.getBloodgroup(),formHandler.getBloodgroup())%></option>
<option value="O Positive">O Positive</option>
<option value="O Negative">O Negative</option>
<option value="A Positive">A Positive</option>
<option value="A Negative">A Negative</option>
<option value="B Positive">B Positive</option>
<option value="B Negative">B Negative</option>
<option value="AB Positive">AB Positive</option>
<option value="AB Negative">AB Negative</option>
</select>
<font size=2 color=red><%=formHandler.getErrorMsg("bloodgroup")%></font>
</td></tr>
<tr><td>Salary:</td><td><input type="text" name="salary" style="height:30px; width:200px;" value="<%=replacer( f.getSalary(),formHandler.getSalary())%>"/>
<font size=2 color=red><%=formHandler.getErrorMsg("salary")%></font></td></tr>
<tr><td>Skills:</td><td><input type="text" name="skills" style="height:30px; width:200px;" value="<%=replacer( f.getSkills(),formHandler.getSkills())%>"/>
<font size=2 
color=red><%=formHandler.getErrorMsg("skills")%></font></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit User"/></td>
<td colspan="2"><input type="submit" onclick="location.href='registerlist.jsp';" value="Back"/></td>
</tr>
</table>	
</form>
</center>

</body>


<script type="text/javascript">

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth() + 1; //January is 0!
var yyyy = today.getFullYear();

if (dd < 10) {                                                             //min = "1922-01-01";
   dd = '0' + dd;
}

if (mm < 10) {
   mm = '0' + mm;
} 
    
today = yyyy + '-' + mm + '-' + dd;
document.getElementById("date").setAttribute("max", today);

document.getElementById("date").setAttribute("min",(yyyy-100)+ '-' + mm + '-' + dd)
</script>
</html>