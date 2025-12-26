package com.arh.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.arh.entity.Pyqs;
import com.arh.utility.JPAUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;

public class PyqsDao {

    public static boolean addPyq(Pyqs pyq) {

    	 EntityManagerFactory factory = JPAUtil.getFactory();
         EntityTransaction tx = null;

         try (EntityManager manager = factory.createEntityManager()) {

            tx = manager.getTransaction();
            tx.begin();
            manager.persist(pyq);
            tx.commit();
            return true;

        } catch (Exception e) {
            if (tx != null) tx.rollback();
            e.printStackTrace();
            return false;
        }
    }
    
    
    public static List<Pyqs> getAllPyqs() {
    	EntityManagerFactory factory = JPAUtil.getFactory();
    	List<Pyqs> list = null;

        try (EntityManager manager = factory.createEntityManager()) {

            list = manager.createQuery("from Pyqs", Pyqs.class).getResultList();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
