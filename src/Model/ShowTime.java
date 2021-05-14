package Model;

public class ShowTime {
	int id;
	int movieId;
	String timeslot;
	int status;
	
	
	public ShowTime(int id, int movieId, String timeslot, int status) {
		this.id = id;
		this.movieId = movieId;
		this.timeslot = timeslot;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public int getMovieId() {
		return movieId;
	}
	public String getTimeslot() {
		return timeslot;
	}
	public int getStatus() {
		return status;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}
	public void setTimeslot(String timeslot) {
		this.timeslot = timeslot;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	
	

}
