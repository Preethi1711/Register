package pack2;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import pack1.FormBean;
import pack1.ValidateBean;
import pack1.EditFormBean;

public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test_db?characterEncoding=latin1","root","password");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int update(EditFormBean f){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update loginpagee set FirstName=?,LastName=?,Dob=?,Age=?,Email=?,Gender=?,Password=?,ConfirmPassword=?,PhoneNumber=?,Address1=?,Address2=?,City=?,Pincode=?,State=?,Country=?,Bloodgroup=?,Salary=?,Skills=? where id=?");
		ps.setString(1,f.getFirstName());
		ps.setString(2,f.getLastName());
		ps.setString(3,f.getDob());
		ps.setString(4,f.getAge());
		ps.setString(5,f.getEmail());
		ps.setString(6,f.getGender());
		
		ps.setString(7,f.getPassword1());
		ps.setString(8,f.getPassword2());
		ps.setString(9,f.getPhonenumber());
		ps.setString(10,f.getAddress1());
		ps.setString(11,f.getAddress2());
		
		ps.setString(12,f.getCity());
		ps.setString(13,f.getPincode());
		ps.setString(14,f.getState());
		ps.setString(15,f.getCountry());
		ps.setString(16,f.getBloodgroup());
		ps.setString(17,f.getSalary());
		ps.setString(18,f.getSkills());
		ps.setInt(19,f.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(FormBean f){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from loginpagee where id=?");
		ps.setInt(1,f.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static int save(FormBean f){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into loginpagee(FirstName,LastName,Dob,Age,Email,Gender,Password,ConfirmPassword) values(?,?,?,?,?,?,?,?)");
		ps.setString(1,f.getFirstName());
		ps.setString(2,f.getLastName());
		//String sDate1="";  
	    Date date1=(Date) new SimpleDateFormat("yyyy-MM-dd").parse(f.getDob());   
	    ps.setDate(3, new java.sql.Date(date1.getTime()));
		ps.setString(4,f.getAge());
		ps.setString(5,f.getEmail());
		ps.setString(6,f.getGender());	
		ps.setString(7,f.getPassword1());
		ps.setString(8,f.getPassword2());		
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}

public static List<FormBean> getAllRecords(){
	List<FormBean> list=new ArrayList<FormBean>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loginpagee");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			FormBean f=new FormBean();
			f.setId(rs.getInt("id"));
			f.setFirstName(rs.getString("firstName"));
			f.setLastName(rs.getString("lastName"));
			f.setDob(rs.getString("dob"));
			f.setAge(rs.getString("age"));
			f.setEmail(rs.getString("email"));
			f.setGender(rs.getString("gender"));
			f.setPassword1(rs.getString("password"));
			f.setPassword2(rs.getString("confirmPassword"));
			list.add(f);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static EditFormBean getRecordById(int id){
	EditFormBean f=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loginpagee where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			f=new EditFormBean();
			f.setId(rs.getInt("id"));
			f.setFirstName(rs.getString("firstName"));
			f.setLastName(rs.getString("lastName"));
			f.setDob(rs.getString("dob"));
			f.setAge(rs.getString("age"));
			f.setEmail(rs.getString("email"));
			f.setGender(rs.getString("gender"));
			f.setPassword1(rs.getString("password"));
			f.setPassword2(rs.getString("confirmPassword"));
			f.setPhonenumber(rs.getString("phonenumber"));
			f.setAddress1(rs.getString("address1"));
			f.setAddress2(rs.getString("address2"));
			
			f.setCity(rs.getString("city"));
			f.setPincode(rs.getString("pincode"));
			f.setState(rs.getString("state"));
			f.setCountry(rs.getString("country"));
			f.setBloodgroup(rs.getString("bloodgroup"));
			f.setSalary(rs.getString("salary"));
			f.setSkills(rs.getString("skills"));
		}
	}catch(Exception e){System.out.println(e);}
	return f;
}
public static EditFormBean getRecordByName(String name){
	EditFormBean f=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loginpagee where email=?");
		ps.setString(1,name);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			f=new EditFormBean();
			f.setId(rs.getInt("id"));
			f.setFirstName(rs.getString("firstName"));
			f.setLastName(rs.getString("lastName"));
			f.setDob(rs.getString("dob"));
			f.setAge(rs.getString("age"));
			f.setEmail(rs.getString("email"));
			f.setGender(rs.getString("gender"));
			f.setPassword1(rs.getString("password"));
			f.setPassword2(rs.getString("confirmPassword"));
			f.setPhonenumber(rs.getString("phonenumber"));
			f.setAddress1(rs.getString("address1"));
			f.setAddress2(rs.getString("address2"));
			f.setCity(rs.getString("city"));
			f.setPincode(rs.getString("pincode"));
			f.setState(rs.getString("state"));
			f.setCountry(rs.getString("country"));
			f.setBloodgroup(rs.getString("bloodgroup"));
			f.setSalary(rs.getString("salary"));
			f.setSkills(rs.getString("skills"));
		}
	}catch(Exception e){System.out.println(e);}
	return f;
}
public static EditFormBean getRecordById1(int id){
	EditFormBean f=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from loginpagee where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			f=new EditFormBean();
			f.setId(rs.getInt("id"));
			f.setFirstName(rs.getString("firstName"));
			f.setLastName(rs.getString("lastName"));
			f.setDob(rs.getString("dob"));
			f.setAge(rs.getString("age"));
			f.setEmail(rs.getString("email"));
			f.setGender(rs.getString("gender"));	
			f.setPassword1(rs.getString("password"));
			f.setPassword2(rs.getString("confirmPassword"));
			f.setPhonenumber(rs.getString("phonenumber"));
			f.setAddress1(rs.getString("address1"));
			f.setAddress2(rs.getString("address2"));
			f.setGender(rs.getString("gender"));
			f.setCity(rs.getString("city"));
			f.setPincode(rs.getString("pincode"));
			f.setState(rs.getString("state"));
			f.setCountry(rs.getString("country"));
			f.setBloodgroup(rs.getString("bloodgroup"));
			f.setSalary(rs.getString("salary"));
			f.setSkills(rs.getString("skills"));
		}
	}catch(Exception e){System.out.println(e);}
	return f;
}
public boolean validatelogin(ValidateBean formHandler)throws ClassNotFoundException {
    boolean status = false;
    try {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("SELECT * from  loginpagee WHERE email = ? AND password = ?");
		ps.setString(1, formHandler.getEmail());
		ps.setString(2, formHandler.getPassword1());
		 System.out.println(ps);
            ResultSet rs = ps.executeQuery();
            status = rs.next();

        } catch (SQLException e) {
            // process sql exception
        	System.out.println(e);	
        }
        return status;
    }


public static boolean logindb(String username, String pass)
{
    boolean usernameExists = false;
	try {
		Connection con = getConnection();
		PreparedStatement ps = con.prepareStatement("SELECT * from  loginpagee WHERE email = ? AND password=?");
		ps.setString(1, username);
		ps.setString(2, pass);
		
		ResultSet rs = ps.executeQuery(); 
		String e1,p1;
		if(rs.next()) {
			 e1 =  rs.getString("email");
			 p1 =  rs.getString("password");
			// System.out.println(usernameCounter);
			 if(!e1.equals(username)&&!p1.equals(pass))
	           {
	              usernameExists = true;
	              }	
			 
			
	
	}
	}catch (SQLException e) {
	System.out.println(e);	
	
	} 
	return usernameExists;
	
	
}
public static boolean checkValidation(String email) {
	boolean bool = false;
	int count = 0;

	try {
		Connection con = getConnection();
		PreparedStatement st = con.prepareStatement(email);
		ResultSet rs = st.executeQuery("select * from loginpagee where email='" + email + "'");
		while (rs.next()) {
			count++;
		}
		if (count > 0) {
			return true;

		}
		return false;
	} catch (Exception e) {
		System.out.print(e);
	}
	return bool;
}




}
