package com.arh.dao;

import java.util.ArrayList;
import java.util.List;

import com.arh.entity.Branch;
import com.arh.utility.JPAUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class BranchDao {
	public static boolean addBranch(Branch b) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try (EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			manager.persist(b);
			tx.commit();
			return true;
		} catch (Exception e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}

	public static List<Branch> getAllBranches() {
		
		EntityManagerFactory factory = JPAUtil.getFactory();
		try (EntityManager manager = factory.createEntityManager();) {
			TypedQuery<Branch> query = manager.createQuery("from Branch", Branch.class);
			return query.getResultList();
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	
	public static boolean deleteBranch(Branch b) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try (EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			Branch branch = manager.find(Branch.class, b.getId());
			if(branch != null) manager.remove(branch);
			tx.commit();
			return true;
		} catch (Exception e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	
	public static boolean updateBranch(Branch b) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try (EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			Branch branch = manager.find(Branch.class, b.getId());
			branch.setBranchName(b.getBranchName());
			tx.commit();
			return true;
		} catch (Exception e) {
			if (tx != null && tx.isActive())
				tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	
	public static Branch getBranchById(Branch b) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		try (EntityManager manager = factory.createEntityManager();) {
		return manager.find(Branch.class, b.getId());
		
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}

}
