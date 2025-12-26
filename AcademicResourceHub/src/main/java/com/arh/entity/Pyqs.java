package com.arh.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "pyqs")
public class Pyqs {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private int year;
	private String fileName;
	private String filePath;

	// Many PYQs → One subject
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "subject_id")
	private Subject subject;

	@Transient
	private int subjectId;

	public int getSubjectId() {
		return subjectId;
	}

	public void setSubjectId(int subjectId) {
		this.subjectId = subjectId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

}
