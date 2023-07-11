<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="formHandler" class="pack1.FormBean" scope="request"/>    
<!DOCTYPE html>
<html>
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
</script></header>
<head>
<meta charset="UTF-8">
  <title>Sign Up Signin Form Template Example</title>
  <link rel="stylesheet" href="./style.css">

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
<!-- partial:index.partial.html -->
<html lang="en">
<head>
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  </head>
<body>
<form action="proces.jsp" method=post>
<div class="tab-pane fade active in" id="signup">
            <h2 class="text-uppercase text-center" style="color:white;"> Sign Up</h2>
            <center>
         
             <div class="row">
                  <div class="form-group">
                    <label style="color:white;">First Name<span class="req">*</span> </label>
                    <input type="text" style="height:40px; width:300px;" class="form-control" id="first_name" name="firstName" value='<%=formHandler.getFirstName()%>' required data-validation-required-message="Please enter your first name." oninput="this.value = this.value.replace(/[^a-z,A-Z.]/g, '').replace(/(\..*)\./g, '$1');" autocomplete="off">
                    <font size=2 color=red><%=formHandler.getErrorMsg("firstName")%></font>
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <label style="color:white;"> Last Name<span class="req">*</span> </label>
                    <input type="text" style="height:40px; width:300px;" class="form-control" id="last_name" name="lastName" value='<%=formHandler.getLastName()%>' required data-validation-required-message="Please enter your last name." oninput="this.value = this.value.replace(/[^a-z,A-Z.]/g, '').replace(/(\..*)\./g, '$1');" autocomplete="off">
                    <font size=2 color=red><%=formHandler.getErrorMsg("lastName")%></font>
                    <p class="help-block text-danger"></p>
                    </div>
                  </div>
                  <div class="row">
              <div class="form-group">
                    <label style="color:white;">Date Of Birth<span class="req">*</span> </label>
                    <input type="date" style="height:40px; width:300px;" class="form-control" id="date" onchange ="ageCount()" name="dob" value='<%=formHandler.getDob()%>' required data-validation-required-message="Please enter your dob." autocomplete="off">
                    <font size=2 color=red><%=formHandler.getErrorMsg("dob")%></font>
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <label style="color:white;"> Age<span class="req">*</span> </label>
                    <input type="text" style="height:40px; width:300px;" class="form-control" id="agee" name="age" value='<%=formHandler.getAge()%>' required data-validation-required-message="Please enter your age." autocomplete="off">
                    <font size=2 color=red><%=formHandler.getErrorMsg("age")%></font>
                    <p class="help-block text-danger"></p>
                  </div>
              <div class="form-group">
                <label style="color:white;"> Email<span class="req">*</span> </label>
                <input type="email" style="height:40px; width:300px;" class="form-control" id="email" name="email" value='<%=formHandler.getEmail()%>' required data-validation-required-message="Please enter your email address." autocomplete="off">
                <font size=2 color=red><%=formHandler.getErrorMsg("email")%></font>
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label style="color:white;"> Gender<span class="req">*</span> </label>
                <input type="radio" name="gender" value="Male" required data-validation-required-message="Please select the gender." autocomplete="off"><label style="color:pink;">Male</label>
                <input type="radio" name="gender" value="Female" required data-validation-required-message="Please select the gender." autocomplete="off"><label style="color:pink;">Female</label>
                <input type="radio" name="gender" value="Others" required data-validation-required-message="Please select the gender." autocomplete="off"><label style="color:pink;">Others</label>
                <font size=2 color=red><%=formHandler.getErrorMsg("gender")%></font>
                <p class="help-block text-danger"></p>
                
              </div>
              <div class="form-group">
                <label style="color:white;"> Password<span class="req">*</span> </label>
                <input type="password" style="height:40px; width:300px;" class="form-control" id="myInput" name="password1" value='<%=formHandler.getPassword1()%>' required data-validation-required-message="Please enter your password" autocomplete="off"><br>
                <font size=2 color=red><%=formHandler.getErrorMsg("password1")%></font>
                <p class="help-block text-danger"></p>
              </div>
              <div class="form-group">
                <label style="color:white;"> Confirm Password<span class="req">*</span> </label>
                <input type="password" style="height:40px; width:300px;" class="form-control" id="myInput1" name="password2" value='<%=formHandler.getPassword2()%>' required data-validation-required-message="Please enter your Confirm password" autocomplete="off">
                <font size=2 color=red><%=formHandler.getErrorMsg("password2")%></font>
                <p class="help-block text-danger"></p>
              </div>
              <div class="mrgn-30-top">
              <button type="submit" style="height:40px; width:300px;" class="btn btn-larger btn-block">Sign up</button>
              <button type="submit" style="height:40px; width:300px;" onclick="location.href='index.html';" class="btn btn-larger btn-block">Back</button>
              </center>
              </div>
             
            
          </div>
          
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



<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
<script>
function myFunction1() {
	  var x = document.getElementById("myInput1");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
<!-- partial -->
  <script  src="./script.js"></script>
</form>
</body>
</html>