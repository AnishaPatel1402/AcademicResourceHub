package com.arh.entity;

import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "subjects")
public class Subject {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(nullable = false)
    private String subjectName;

    private String ytLink;
    
    
 // Many subjects → One branch
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "branch_id")
    private Branch branch;

    // Many subjects → One semester
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "semester_id")
    private Semester semester;
    
    @Transient
    private int branchId;
    
    @Transient
    private int semesterId;

    // One subject → Many notes
    @OneToMany(mappedBy = "subject", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Notes> notes;

    // One subject → Many PYQs
    @OneToMany(mappedBy = "subject", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Pyqs> pyqs;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubjectName() {
		return subjectName;
	}

	public void setSubjectName(String subjectName) {
		this.subjectName = subjectName;
	}

	public String getYtLink() {
		return ytLink;
	}

	public void setYtLink(String ytLink) {
		this.ytLink = ytLink;
	}

	public Branch getBranch() {
		return branch;
	}

	public void setBranch(Branch branch) {
		this.branch = branch;
	}

	public Semester getSemester() {
		return semester;
	}

	public void setSemester(Semester semester) {
		this.semester = semester;
	}
	
	

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public int getSemesterId() {
		return semesterId;
	}

	public void setSemesterId(int semesterId) {
		this.semesterId = semesterId;
	}

	public List<Notes> getNotes() {
		return notes;
	}

	public void setNotes(List<Notes> notes) {
		this.notes = notes;
	}

	public List<Pyqs> getPyqs() {
		return pyqs;
	}

	public void setPyqs(List<Pyqs> pyqs) {
		this.pyqs = pyqs;
	}
    
    
    

}
