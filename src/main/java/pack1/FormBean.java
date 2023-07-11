package pack1;

import java.io.*;
import java.util.*;

import pack2.UserDao;

public class FormBean {
  private int id;
  private String firstName;
  private String lastName;
  private String dob;
  private String age;
  private String email;
  private String gender;
  private String password1;
  private String password2;
  private Hashtable errors;
public String date1;
  public boolean validate() {
    boolean bool=true;
    if ((firstName.equals(""))) {
      errors.put("firstName","Please enter your first name");
      firstName="";
      bool=false;
    }else if(!firstName.matches("^[a-zA-Z]*$"))
    {
    	errors.put("firstName","Please Enter a Valid Name");
    	firstName="";
        bool=false;
    }
    if ((lastName.equals(""))) {
      errors.put("LastName","Please enter your last name");
      lastName="";
      bool=false;
    }else if(!lastName.matches("^[a-zA-Z]*$"))
    {
    	errors.put("lastName","Please Enter a Valid Name");
    	lastName="";
        bool=false;
    }   
    if (dob=="") {
        errors.put("dob","Please enter your dob");
        dob="";
        bool=false;
      }
    if (age.equals("")) {
        errors.put("age","Please enter your age");
        age="";
        bool=false;
      }
    if (email.equals("") || (email.indexOf('@') == -1)) {
      errors.put("email","Please enter a valid email address");
      email="";
      bool=false;
    }
    if (gender.equals("")) {
        errors.put("gender","Please enter your gender");
        gender="";
        bool=false;
      }
    if (password1.equals("") ) {
      errors.put("password1","Please enter a valid password");
      password1="";
      bool=false;
    }
    if (!password1.equals("") && (password2.equals("") || 
        !password1.equals(password2))) {
      errors.put("password2","Please confirm your password");
      password2="";
      bool=false;
    }
    if(UserDao.checkValidation(email)) {
    	errors.put("email","User Name is already Exists");
        email="";
         bool=false;
    }
    return bool;
  }
 
  public FormBean() {
    firstName="";
    lastName="";
    dob="";
    age="";
    email="";
    gender="";
    password1="";
    password2="";
    errors = new Hashtable();
    
  }
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getDob() {
	return dob;
}
public void setDob(String dob) {
	this.dob = dob;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getPassword1() {
	return password1;
}
public void setPassword1(String password1) {
	this.password1 = password1;
}
public String getPassword2() {
	return password2;
}
public void setPassword2(String password2) {
	this.password2 = password2;
}
public String getErrorMsg(String s) {
    String errorMsg =(String)errors.get(s.trim());
    return (errorMsg == null) ? "":errorMsg;
  }
public Hashtable getErrors() {
	return errors;
}
public void setErrors(Hashtable errors) {
	this.errors = errors;
}
public String getDate1() {
	return date1;
}
public void setDate1(String date1) {
	this.date1 = date1;
}
public int getId() {
	return id;
}
public void setId(int int1) {
	this.id=int1;
	// TODO Auto-generated method stub
	
} 
}

