package com.arh.dao;

import java.util.List;

import com.arh.entity.Admin;
import com.arh.entity.Student;
import com.arh.utility.HashPassUtil;
import com.arh.utility.JPAUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;


public class StudentDao {
	public static boolean registerStudent(Student s) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		EntityTransaction tx = null;
		try(EntityManager manager = factory.createEntityManager()) {
			tx = manager.getTransaction();
			tx.begin();
			manager.persist(s);
			tx.commit();
			return true;
		} catch (Exception e) {
			if(tx!=null && tx.isActive()) tx.rollback();
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
	
	
	public static boolean checkStudent(Student s) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		try(EntityManager manager = factory.createEntityManager()) {
			TypedQuery<Student> query = manager.createQuery("from Student where email=:email", Student.class);
			query.setParameter("email", s.getEmail());
			
			Student stud = query.getSingleResult();
			if(HashPassUtil.checkPassword(s.getPassword(), stud.getPassword())) return true;
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
}
