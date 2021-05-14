package Model;

public class Booking {
	int id;
	String userid;
	int timeslotId;
	float total;
	int numTickets;
	String date;
	public Booking(int id, String userid, int timeslotId, float total, int numTickets, String date) {
		
		this.id = id;
		this.userid = userid;
		this.timeslotId = timeslotId;
		this.total = total;
		this.numTickets = numTickets;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public String getUserid() {
		return userid;
	}
	public int getTimeslotId() {
		return timeslotId;
	}
	public float getTotal() {
		return total;
	}
	public int getNumTickets() {
		return numTickets;
	}
	public String getDate() {
		return date;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public void setTimeslotId(int timeslotId) {
		this.timeslotId = timeslotId;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public void setNumTickets(int numTickets) {
		this.numTickets = numTickets;
	}
	public void setDate(String date) {
		this.date = date;
	}
	
	
	
	
	
}
