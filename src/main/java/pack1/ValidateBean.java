package pack1; 
import java.io.Serializable;
import java.util.Hashtable;
import java.lang.*;
import pack2.UserDao; 
  
// To persist the data for future use, 
// implement serializable 
public class ValidateBean implements Serializable { 
    private String email, password1; 
    private Hashtable errors;
    
    public boolean validateuser() 
    { System.out.println("1111");

    	 boolean bool=true;
    	 if (email.equals(""))  {System.out.println("2222");

    	      errors.put("email","Please enter a valid email address");
    	      email="";
    	      bool=false;
    	    }
    	 if (password1.equals("") ) {System.out.println("33333");

    	      errors.put("password1","Please enter a valid password");
    	      password1="";
    	      bool=false;
    	    }
    	 if(UserDao.logindb(email,password1)) {
    	    	errors.put("email","email not exist");
    	    	errors.put("password","Please enter a valid password");
    	    	email="";
    	        password1="";
    	        bool=false;
    	    }
    	 return bool;
    }
    
    
    public ValidateBean() {
        
        email="";      
        password1="";
        errors = new Hashtable();
        
      }
    
    
    
    
    
    
    public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword1() {
		return password1;
	}
	public void setPassword1(String password1) {
		this.password1 = password1;
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
    // Method to validate a user 
   
} 
