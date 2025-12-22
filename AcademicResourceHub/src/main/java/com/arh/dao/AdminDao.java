package com.arh.dao;

import java.util.List;

import com.arh.entity.Admin;
import com.arh.utility.JPAUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;

public class AdminDao {
	public static boolean checkAdmin(Admin admin) {
		EntityManagerFactory factory = JPAUtil.getFactory();
		try(EntityManager manager = factory.createEntityManager()) {
			TypedQuery<Admin> query = manager.createQuery("from Admin where email=:email and password=:password", Admin.class);
			query.setParameter("email", admin.getEmail());
			query.setParameter("password", admin.getPassword());
			List<Admin> a = query.getResultList();
			if(a.size() != 0) return true;
			return false;
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(e.getMessage());
		}
	}
}
