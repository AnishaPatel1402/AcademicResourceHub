package com.arh.dao;

import com.arh.entity.Notes;
import com.arh.utility.JPAUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;

public class NotesDao {
	public static boolean addNotes(Notes notes) {

        EntityManagerFactory factory = JPAUtil.getFactory();
        EntityTransaction tx = null;

        try (EntityManager manager = factory.createEntityManager()) {
            tx = manager.getTransaction();
            tx.begin();
            manager.persist(notes);
            tx.commit();
            return true;

        } catch (Exception e) {
            if (tx != null && tx.isActive()) tx.rollback();
            e.printStackTrace();
            return false;
        }
    }
}
