package Model;

public class UserModel {

	String email ;
	String password;
	String fname;
	String lname;
	int type;
	String tp;
	public UserModel(String email, String password, String fname, String lname, int type,String tp) {
		
		this.email = email;
		this.password = password;
		this.fname = fname;
		this.lname = lname;
		this.type = type;
		this.tp = tp;
	}
	
	public String getTp() {
		return tp;
	}
	
	
	
	public String getEmail() {
		return email;
	}
	public String getPassword() {
		return password;
	}
	public String getFname() {
		return fname;
	}
	public String getLname() {
		return lname;
	}
	public int getType() {
		return type;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
	public void setTp(String tp) {
		this.tp = tp;
	}
	
	
}
