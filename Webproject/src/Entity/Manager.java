package Entity;



public class Manager {

	private String email;
	private String lname;

	
	
	public Manager() {
		this.setEmail("");
		this.setLname("");
		//this.setCategory("");
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}


}
