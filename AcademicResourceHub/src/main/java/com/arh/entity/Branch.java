package com.arh.entity;

import java.util.List;

import jakarta.persistence.*;

@Entity
public class Branch {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false, unique = true)
    private String branchName;
    
    
    // One branch → Many subjects
    @OneToMany(mappedBy = "branch", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Subject> subjects;

    

	public Branch() {
		super();
	}

	public Branch(int id, String branchName, List<Subject> subjects) {
		super();
		this.id = id;
		this.branchName = branchName;
		this.subjects = subjects;
	}

	public Branch(String branchName, List<Subject> subjects) {
		this.branchName = branchName;
		this.subjects = subjects;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public List<Subject> getSubjects() {
		return subjects;
	}

	public void setSubjects(List<Subject> subjects) {
		this.subjects = subjects;
	}
 
}
