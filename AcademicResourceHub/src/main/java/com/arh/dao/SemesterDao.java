package com.arh.dao;

import java.util.List;

import com.arh.entity.Branch;
import com.arh.entity.Semester;
import com.arh.utility.JPAUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class SemesterDao {
	public static boolean addSem(Semester s) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try (EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			manager.persist(s);
			tx.commit();
			return true;
		} catch (Exception e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}

	
	public static boolean deleteSem(Semester s) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try (EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			Semester sem = manager.find(Semester.class, s.getId());
			if(sem != null) manager.remove(sem);
			tx.commit();
			return true;
		} catch (Exception e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	public static List<Semester> getAllSemesters() {

		EntityManagerFactory factory = JPAUtil.getFactory();
		try (EntityManager manager = factory.createEntityManager();) {
			TypedQuery<Semester> query = manager.createQuery("from Semester", Semester.class);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	
	
	public static Semester getBranchById(Semester s) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		try (EntityManager manager = factory.createEntityManager();) {
		return manager.find(Semester.class, s.getId());
		
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}

}
