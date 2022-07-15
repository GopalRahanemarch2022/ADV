package com.cdac.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Table_Student_Info")
public class Student {

	@Id
	@GeneratedValue
	private int id;
	private String rollNo;
	private String name;
	private String surname;
	private String motherName;
	private int passingYear;
	private int englishMark;
	private int marathiMark;
	private int hindiMark;
	private int mathMark;
	private int scienceMark;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}
	public String getMotherName() {
		return motherName;
	}
	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}
	public int getPassingYear() {
		return passingYear;
	}
	public void setPassingYear(int passingYear) {
		this.passingYear = passingYear;
	}
	public int getEnglishMark() {
		return englishMark;
	}
	public void setEnglishMark(int englishMark) {
		this.englishMark = englishMark;
	}
	public int getMarathiMark() {
		return marathiMark;
	}
	public void setMarathiMark(int marathiMark) {
		this.marathiMark = marathiMark;
	}
	public int getHindiMark() {
		return hindiMark;
	}
	public void setHindiMark(int hindiMark) {
		this.hindiMark = hindiMark;
	}
	public int getMathMark() {
		return mathMark;
	}
	public void setMathMark(int mathMark) {
		this.mathMark = mathMark;
	}
	public int getScienceMark() {
		return scienceMark;
	}
	public void setScienceMark(int scienceMark) {
		this.scienceMark = scienceMark;
	}

	
	
}
