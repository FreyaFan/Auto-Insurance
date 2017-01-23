package Entity;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Auto {
	public String licensePlate;
	public String brand;
	public int year;
	public int price;
	public int mileage;
	public int customerID;
	
	public Auto(){
		
	}
	public String getLicensePlate(){
		return licensePlate;
	}
	public void setLicensePlate(String licensePlate){
		this.licensePlate=licensePlate; 
	}
	public String getBrand(){
		return brand;
	}
	public void setBrand(String brand){
		this.brand=brand;
	}
	public int getYear(){
		return year;
	}
	public void setYear(int year){
		this.year=year;
	}
	public int getPrice(){
		return price;
	}
	public void setPrice(int price){
		this.price=price;
	}
	public int getMileage(){
		return mileage;
	}
	public void setMileage(int mileage){
		this.mileage=mileage;
	}
}
