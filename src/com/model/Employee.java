package com.model;

public class Employee {

	private int eid;
	private String ename;
	private String eemail;
	private String epassword;
	private String edesignation;
	private Double esalary;
	private byte[] eimage;
	public byte[] getEimage() {
		return eimage;
	}
	public void setEimage(byte[] eimage) {
		this.eimage = eimage;
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEemail() {
		return eemail;
	}
	public void setEemail(String eemail) {
		this.eemail = eemail;
	}
	public String getEpassword() {
		return epassword;
	}
	public void setEpassword(String epassword) {
		this.epassword = epassword;
	}
	public String getEdesignation() {
		return edesignation;
	}
	public void setEdesignation(String edesignation) {
		this.edesignation = edesignation;
	}
	public Double getEsalary() {
		return esalary;
	}
	public void setEsalary(Double esalary) {
		this.esalary = esalary;
	}
	@Override
	public String toString() {
		return "Employee [eid=" + eid + ", ename=" + ename + ", eemail=" + eemail + ", epassword=" + epassword
				+ ", edesignation=" + edesignation + ", esalary=" + esalary + "]";
	}
}
	
