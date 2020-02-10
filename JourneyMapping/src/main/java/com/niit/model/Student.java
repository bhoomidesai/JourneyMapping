package com.niit.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.OneToMany;
import javax.persistence.CascadeType;
import javax.persistence.FetchType;
import java.util.List;

@Entity
@Table(name = "student")

public class Student {
	@Id
	@Column
	private String studentID;
	@Column
	private String  studentName, courseCode,studentStatus,totalSem,CurrentSem;
	@Column
	Date regDate,SOLDate,lastAttend;
	
	@OneToMany(mappedBy = "student", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Batch> batchlist;

	
	public List<Batch> getBatchlist() {
		return batchlist;
	}
	public void setBatchlist(List<Batch> batchlist) {
		this.batchlist = batchlist;
	}
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(String courseCode) {
		this.courseCode = courseCode;
	}
	public String getStudentStatus() {
		return studentStatus;
	}
	public void setStudentStatus(String studentStatus) {
		this.studentStatus = studentStatus;
	}
	public String getTotalSem() {
		return totalSem;
	}
	public void setTotalSem(String totalSem) {
		this.totalSem = totalSem;
	}
	public String getCurrentSem() {
		return CurrentSem;
	}
	public void setCurrentSem(String currentSem) {
		CurrentSem = currentSem;
	}
	public Date getLastAttend() {
		return lastAttend;
	}
	public void setLastAttend(Date lastAttend) {
		this.lastAttend = lastAttend;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getSOLDate() {
		return SOLDate;
	}
	public void setSOLDate(Date sOLDate) {
		SOLDate = sOLDate;
	}
	
	
}
