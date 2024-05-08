package com.model;

import java.util.Arrays;

public class User {
	private int uid;
	private String uname;
	private String uemail;
	private String upassword;
	private String ugender;
	private byte[] uimage;
	
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpassword() {
		return upassword;
	}
	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}
	public String getUgender() {
		return ugender;
	}
	public void setUgender(String ugender) {
		this.ugender = ugender;
	}
	public byte[] getUimage() {
		return uimage;
	}
	public void setUimage(byte[] uimage) {
		this.uimage = uimage;
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", uemail=" + uemail + ", upassword=" + upassword
				+ ", ugender=" + ugender + ", uimage=" + Arrays.toString(uimage) + "]";
	}

}




