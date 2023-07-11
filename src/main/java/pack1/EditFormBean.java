package pack1;
import java.io.*;
import java.sql.Date;
import java.util.*;
import pack2.UserDao;
public class EditFormBean {
  private int id;
  private String firstName;
  private String lastName;
  private String dob;
  private String age;
  private String email;
  private String phonenumber;
  private String password1;
  private String password2;
  private String address1;
  private String address2;
  private String gender;
  private String city;
  private String pincode;
  private String state;
  private String country;
  private String bloodgroup;
  private String salary;
  private String skills;
  private Hashtable errors;
public String date1;
  public boolean validate1() {
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
    }    if (dob=="") {
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
    if ((phonenumber.equals(""))) {
        errors.put("phonenumber","Please enter your phonenumber");
        phonenumber="";
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
      if (address1.equals("")) {
          errors.put("address1","Please enter your address1");
          address1="";
          bool=false;
        }
        if (address2.equals("")) {
            errors.put("address2","Please enter your address2");
            address2="";
            bool=false;
          }
        if (gender.equals("")) {
            errors.put("gender","Please enter your gender");
            gender="";
            bool=false;
          }
        if ((city.equals(""))) {
            errors.put("city","Please enter your city");
            city="";
            bool=false;
          }else if(!city.matches("^[a-zA-Z]*$"))
          {
          	errors.put("city","Please Enter a Valid City");
          	city="";
              bool=false;
          }
        if (pincode.equals("")) {
            errors.put("zip","Please enter a valid zip code");
            pincode="";
            bool=false;
          }
        if ((state.equals(""))) {
            errors.put("state","Please enter your state");
            state="";
            bool=false;
          }else if(!state.matches("^[a-zA-Z]*$"))
          {
          	errors.put("state","Please Enter a Valid State");
          	state="";
              bool=false;
          }
        if (country.equals("")) {
            errors.put("country","Please enter your bloodgroup");
            country="";
            bool=false;
          }
        if (bloodgroup.equals("")) {
            errors.put("bloodgroup","Please enter your bloodgroup");
            bloodgroup="";
            bool=false;
          }
        
        if (salary.equals("")) {
            errors.put("salary","Please enter your salary");
            salary="";
            bool=false;
          }
        
        if (skills.equals("")) {
            errors.put("skills","Please enter your salary");
            skills="";
            bool=false;
          } 
    return bool;
  }
  public String getErrorMsg(String s) {
    String errorMsg =(String)errors.get(s.trim());
    return (errorMsg == null) ? "":errorMsg;
  }
  public EditFormBean() {
    firstName="";
    lastName="";
    dob="";
    age="";
    email="";
    phonenumber="";
    password1="";
    password2="";
    address1="";
    address2="";
    gender="";
    city="";
    pincode="";
    state="";
    country="";
    bloodgroup="";
    salary="";
    skills="";
    errors = new Hashtable();
    
  }
  public int getId() {
		return id;
	}
	
  public String getFirstName() {
    return firstName;
  }
  public String getLastName() {
    return lastName;
  }
  public String getDob() {
	    return dob;
	  }
  public String getAge() {
	    return age;
	  }
  public String getEmail() {
	    return email;
	  }
  public String getPhonenumber() {
	    return phonenumber;
	  }
  public String getPassword1() {
	    return password1;
	  }
  public String getPassword2() {
	    return password2;
	  }
  public String getAddress1() {
		    return address1;
		  }
  public String getAddress2() {
		    return address2;
		  }
  public String getGender() {
	    return gender;
	  }
 public String getCity() {
	    return city;
	  }
 public String getPincode() {
	    return pincode;
	  }
 public String getState() {
	    return state;
	  }
 public String getCountry() {
	    return country;
	  }
 public String getBloodgroup() {
	    return bloodgroup;
	  }
  public String getSalary() {
	    return salary;
	  }
  public String getSkills() {
    return skills;
  }
  
  public Hashtable getErrors() {
		return errors;
	}
	
  public void setId(int int1) {
		id=int1;
	} 
  public void setFirstName(String fname) {
    firstName =fname;
  }
  public void setLastName(String lname) {
    lastName =lname;
  }
  public void setDob(String db) {
	    dob =db;
	  }
  public void setAge(String ag) {
	    age =ag;
	  }
  public void setEmail(String eml) {
	    email=eml;
	  }
  public void setPhonenumber(String ph) {
	    phonenumber=ph;
	  }
  public void  setPassword1(String p1) {
	    password1=p1;
	  }
	  public void  setPassword2(String p2) {
	    password2=p2;
	  }
	  public void setAddress1(String add1) {
		  address1 =add1;
		  }
	  public void setAddress2(String add2) {
		  address2 =add2;
		  }
	  public void setGender(String gndr) {
		    gender =gndr;
		  }
	  public void setCity(String cty) {
		    city =cty;
		  }
	  public void setPincode(String z) {
		    pincode=z;
		  }
	  public void setState(String sta) {
		    state =sta;
		  }
	  public void setCountry(String co) {
		    country=co;
		  }
	  public void setBloodgroup(String bg) {
		    bloodgroup=bg;
		  }
      public void setSalary(String slry) {
	    salary =slry;
	  }
      public void setSkills(String sk) {
  	    skills =sk;
  	  }
      public void setErrors(Hashtable errors) {
    		this.errors = errors;
    	}
      public String isRbSelected(String st) {
  	    return (gender.equals(st))? "checked" : "";
  	  }  
	
}


