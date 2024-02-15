package org.model.bean;
import java.util.Date;
import java.sql.Time;

public class BookingBean {
	private String dname,speciality,pname,email,pphone_number,demail;
	public String getDemail() {
		return demail;
	}
	public void setDemail(String demail) {
		this.demail = demail;
	}
	private int licenseno;
	private Date date;
	private Time time;
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getSpeciality() {
		return speciality;
	}
	public void setSpeciality(String speciality) {
		this.speciality = speciality;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPphone_number() {
		return pphone_number;
	}
	public void setPphone_number(String pphone_number) {
		this.pphone_number = pphone_number;
	}
	public int getLicenseno() {
		return licenseno;
	}
	public void setLicenseno(int licenseno) {
		this.licenseno = licenseno;
	}
	
}
