package com.arh.entity;

import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "semesters")
public class Semester {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(unique = true, nullable = false)
	private int semNumber;

	// One semester → Many subjects
	@OneToMany(mappedBy = "semester", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	private List<Subject> subjects;

	public Semester(int id, int semNumber, List<Subject> subjects) {
		super();
		this.id = id;
		this.semNumber = semNumber;
		this.subjects = subjects;
	}

	public Semester() {
		super();
	}

	public Semester(int semNumber, List<Subject> subjects) {
		super();
		this.semNumber = semNumber;
		this.subjects = subjects;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSemNumber() {
		return semNumber;
	}

	public void setSemNumber(int semNumber) {
		this.semNumber = semNumber;
	}

	public List<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}

}