package Entity;

public class Sale {

	private String productID;
	private int sum;
	
	public String getProductID(){
		return productID;
	}
	public void setProductID(String productID){
		this.productID = productID;
	}
	public int getSum(){
		return sum;
	}
	public void setSum(int sum){
		this.sum = sum;
	}
	public Sale(String productID, int sum){
		super();
		this.productID = productID;
		this.sum = sum;
	}
}
