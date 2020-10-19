package Model;

public class EmployeeModel {
	int id;
	String name;
	String dob;
	String address;
	String mobile;
	String email;
	String nic;
	String username;
	String pass;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNic() {
		return nic;
	}
	public void setNic(String nic) {
		this.nic = nic;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public EmployeeModel(int id, String name, String dob, String address, String mobile, String email, String nic,
			String username, String pass) {
		super();
		this.id = id;
		this.name = name;
		this.dob = dob;
		this.address = address;
		this.mobile = mobile;
		this.email = email;
		this.nic = nic;
		this.username = username;
		this.pass = pass;
	}
	
	
	
}
