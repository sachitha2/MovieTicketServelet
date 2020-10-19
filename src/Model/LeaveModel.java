package model;

public class LeaveModel {
	int id;
	String leaveType;
	String sDate;
	String eDate;
	String reason;
	int status;
	String empId;
	
	public LeaveModel(int id, String leaveType, String sDate, String eDate, String reason, int status,String empId) {
		super();
		this.id = id;
		this.leaveType = leaveType;
		this.sDate = sDate;
		this.eDate = eDate;
		this.reason = reason;
		this.status = status;
		this.empId = empId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLeaveType() {
		return leaveType;
	}
	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}
	public String getsDate() {
		return sDate;
	}
	public void setsDate(String sDate) {
		this.sDate = sDate;
	}
	public String geteDate() {
		return eDate;
	}
	public void seteDate(String eDate) {
		this.eDate = eDate;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getEmpId() {
		return empId;
	}
	public void setEmpId(String empId) {
		this.empId = empId;
	}
	
	
	
}

