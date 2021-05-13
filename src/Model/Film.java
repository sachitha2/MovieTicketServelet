package Model;

public class Film {

	int id;
	String title;
	String sdate;
	String edate;
	String director;
	String producer;
	String cast;
	String image;
	public Film(int id, String title, String sdate, String edate, String director, String producer, String cast,
			String image) {
		this.id = id;
		this.title = title;
		this.sdate = sdate;
		this.edate = edate;
		this.director = director;
		this.producer = producer;
		this.cast = cast;
		this.image = image;
	}
	public int getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getSdate() {
		return sdate;
	}
	public String getEdate() {
		return edate;
	}
	public String getDirector() {
		return director;
	}
	public String getProducer() {
		return producer;
	}
	public String getCast() {
		return cast;
	}
	public String getImage() {
		return image;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public void setCast(String cast) {
		this.cast = cast;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
}
