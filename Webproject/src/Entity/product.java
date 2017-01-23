package Entity;

public class product {

	private String productID;
	private String pName;
	private Float base_price;
	private Float addition_rate;
	private int duration;
	private Float refund_rate;
	private int sales;
	
	public String getProductID(){
		return productID;
	}
	public void setProductID(String productID){
		this.productID = productID;
	}
	public int getSales(){
		return sales;
	}
	public void setSales(int sales){
		this.sales = sales;
	}
	public String getPName(){
		return pName;
	}
	public void setPName(String pName){
		this.pName = pName;
	}
	public Float getBase_price(){
		return base_price;
	}
	public void setBase_price(Float base_price){
		this.base_price = base_price;
	}
	public Float getAddition_rate(){
		return addition_rate;
	}
	public void setAddition_rate(Float addition_rate){
		this.addition_rate = addition_rate;
	}
	public int getDuration(){
		return duration;
	}
	public void setDuration(int duration){
		this.duration = duration;
	}
	public Float getRefund_rate(){
		return refund_rate;
	}
	public void setRefund_rate(Float refund_rate){
		this.refund_rate = refund_rate;
	}
	public product(String productID, String pName, Float base_price, Float addition_rate, int duration, Float refund_rate, int sales){
		super();
		this.productID = productID;
		this.pName = pName;
		this.base_price = base_price;
		this.addition_rate = addition_rate;
		this.duration = duration;
		this.refund_rate = refund_rate;
		this.sales = sales;
	}
}
