package Entity;



public class Customer {

	private String username;
	private String password;
	private int customerID;
	private int addressID;
	@SuppressWarnings("unused")
	private String email;
	
	
	public Customer() {
		this.setUsername("");
		this.setPassword("");
		//this.setCategory("");
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public int getAddressID() {
		return addressID;
	}

	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}

}
