package com.arh.dao;

import java.util.List;

import com.arh.entity.Branch;
import com.arh.entity.Semester;
import com.arh.entity.Subject;
import com.arh.utility.JPAUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class SubjectDao {

	
	public static boolean addSubject(Subject subject) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try (EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			
			Semester sem = manager.find(Semester.class, subject.getSemesterId()); 
			
			Branch branch = manager.find(Branch.class, subject.getBranchId());
			
			if(branch == null || sem == null) return false;
				
				
			subject.setBranch(branch);
			subject.setSemester(sem);
			
			
			
			manager.persist(subject);
			tx.commit();
			return true;
		} catch (Exception e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	public static boolean deleteSubject(Subject s) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try (EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			Subject sub = manager.find(Subject.class, s.getId());
			if(sub != null) manager.remove(sub);
			tx.commit();
			return true;
		} catch (Exception e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	public static Subject getSubjectById(Subject s) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		try (EntityManager manager = factory.createEntityManager();) {
		return manager.find(Subject.class, s.getId());
		
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	public static List<Subject> getAllSubjects() {
	    EntityManagerFactory factory = JPAUtil.getFactory();
	    EntityManager manager = factory.createEntityManager();

	    List<Subject> list = manager.createQuery(
	        "SELECT s FROM Subject s " +
	        "JOIN FETCH s.branch " +
	        "JOIN FETCH s.semester",
	        Subject.class
	    ).getResultList();

	    manager.close();
	    return list;
	}
	
	public static boolean updateSubject(Subject subject) {
	    EntityManagerFactory factory = JPAUtil.getFactory();
	    EntityTransaction tx = null;

	    try (EntityManager manager = factory.createEntityManager()) {
	        tx = manager.getTransaction();
	        tx.begin();

	        // Load existing subject from DB
	        Subject dbSubject = manager.find(Subject.class, subject.getId());

	        if (dbSubject == null) return false;

	        // Update basic fields
	        dbSubject.setSubjectName(subject.getSubjectName());
	        dbSubject.setYtLink(subject.getYtLink());

	        // Update branch
	        Branch branch = manager.find(Branch.class, subject.getBranchId());
	        dbSubject.setBranch(branch);

	        // Update semester
	        Semester semester = manager.find(Semester.class, subject.getSemesterId());
	        dbSubject.setSemester(semester);

	        manager.merge(dbSubject);
	        tx.commit();
	        return true;

	    } catch (Exception e) {
	        if (tx != null && tx.isActive()) tx.rollback();
	        e.printStackTrace();
	        return false;
	    }
	}


}
