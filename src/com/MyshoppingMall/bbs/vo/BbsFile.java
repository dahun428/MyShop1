package com.MyshoppingMall.bbs.vo;

import java.util.Date;

public class BbsFile {

	private int fileNo;
	private User user;
	private Bbs bbs;
	private String fileName;
	private String fileRealName;
	private Date registeredDate;
	
	public BbsFile(){}

	public void setBbs(Bbs bbs) {
		this.bbs = bbs;
	}
	public Bbs getBbs() {
		return bbs;
	}
	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileRealName() {
		return fileRealName;
	}

	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Date getRegisteredDate() {
		return registeredDate;
	}

	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}

	@Override
	public String toString() {
		return "BbsFile [fileNo=" + fileNo + ", user=" + user + ", bbs=" + bbs + ", fileName=" + fileName
				+ ", fileRealName=" + fileRealName + ", registeredDate=" + registeredDate + "]";
	}
	
	
}
