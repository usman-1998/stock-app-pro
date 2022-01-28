package com.ty.dao;



import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.mysql.cj.protocol.Resultset;
import com.ty.dto.Item;
import com.ty.dto.User;

public class ItemDao {

	private EntityManagerFactory entityManagerFactory;
	private EntityManager entityManager;
	private EntityTransaction entityTransaction;

	private EntityManager getEntityManager() {
		entityManagerFactory = Persistence.createEntityManagerFactory("usman");
		return entityManagerFactory.createEntityManager();
	}

	public void saveItem(Item item) {
		entityManager = getEntityManager();
		entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(item);
		entityTransaction.commit();

	}

	public ArrayList<Item> getAllItem() {
		entityManager = getEntityManager();
		entityTransaction = entityManager.getTransaction();
		Query query = entityManager.createQuery("select i from Item i");
		return (ArrayList<Item>) query.getResultList();
	}

	public boolean deleteItem(int id) {
		entityManager = getEntityManager();
		entityTransaction = entityManager.getTransaction();

		Item item = entityManager.find(Item.class, id);
		if (item != null) {
			entityTransaction.begin();
			entityManager.remove(item);
			entityTransaction.commit();
			return true;
		} else
			return false;
	}

	public Item getItemById(int id) {
		entityManager = getEntityManager();
		entityTransaction = entityManager.getTransaction();
		return entityManager.find(Item.class, id);
	}
	
	public void updateItem(Item item) {
		entityManager = getEntityManager();
		entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(item);
		entityTransaction.commit();
		}
	
	public User validateUser(String email,String pass) {
		entityManager = getEntityManager();
		Query query = entityManager.createQuery("SELECT u FROM USER u WHERE EMAIL = ?1 AND PASSWORD = ?2");
		query.setParameter(1, email);
		query.setParameter(2, pass);
		 User user  = (User)query.getSingleResult();
		 if(user != null) {
			 return user;
		 }else
			 return null;
		
	}

}
