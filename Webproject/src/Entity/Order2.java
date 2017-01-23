package Entity;



public class Order2 {

	private String tn;
	private String lp;
	private String pID;
	private String aID;
	private String date;
	private String tp;
	
	public String getTn(){
		return tn;
	}
	public void setTn(String tn){
		this.tn = tn;
	}
	public String getLp(){
		return lp;
	}
	public void setLp(String lp){
		this.lp = lp;
	}
	public String getPID(){
		return pID;
	}
	public void setPID(String pID){
		this.pID = pID;
	}
	public String getAID(){
		return aID;
	}
	public void setAID(String aID){
		this.aID = aID;
	}
	public String getDate(){
		return date;
	}
	public void setDate(String date){
		this.date = date;
	}
	public String getTp(){
		return tp;
	}
	public void setTp(String tp){
		this.tp = tp;
	}
	public Order2(String tn, String lp, String pID, String aID, String date, String tp){
		super();
		this.tn = tn;
		this.lp = lp;
		this.pID = pID;
		this.aID = aID;
		this.date = date;
		this.tp = tp;
	}

}