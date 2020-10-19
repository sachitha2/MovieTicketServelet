package Model;

public class LeavetypeModel {

	int id;
	String type;
	int maxLeaves;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getMaxLeaves() {
		return maxLeaves;
	}
	public void setMaxLeaves(int maxLeaves) {
		this.maxLeaves = maxLeaves;
	}
	public LeavetypeModel(int id, String type, int maxLeaves) {
		super();
		this.id = id;
		this.type = type;
		this.maxLeaves = maxLeaves;
	}
	
	
	
}
