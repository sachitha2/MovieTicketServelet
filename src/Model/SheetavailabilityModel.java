package Model;

public class SheetavailabilityModel {
	int id;
	String date;
	int status;
	String userId;
	int bookingId;
	int mTimeId;
	int sheetNum;
	
	
	
	public SheetavailabilityModel(int id, String date, int status, String userId, int bookingId, int mTimeId,int sheetNum) {
		this.id = id;
		this.date = date;
		this.status = status;
		this.userId = userId;
		this.bookingId = bookingId;
		this.mTimeId = mTimeId;
		this.sheetNum = sheetNum;
	}
	public int getSheetNum() {
		return sheetNum;
	}
	public int getId() {
		return id;
	}
	public String getDate() {
		return date;
	}
	public int getStatus() {
		return status;
	}
	public String getUserId() {
		return userId;
	}
	public int getBookingId() {
		return bookingId;
	}
	public int getmTimeId() {
		return mTimeId;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}
	public void setmTimeId(int mTimeId) {
		this.mTimeId = mTimeId;
	}
	
	
	
}
