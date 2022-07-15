package com.cdac.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.cdac.entity.Admin;

@Component
public class AdminDao {

		@PersistenceContext
		private EntityManager entityManager;
		
		@Transactional
		public void add(Admin admin) {
			entityManager.persist(admin);
		}
		
		public boolean isAdminPresent(String email) {
			Query query = entityManager.createQuery("select count(a) from Admin a where a.email = :em");
			query.setParameter("em", email);
			Long count = (Long) query.getSingleResult();
			if(count == 1)
				return true;
			return false;
		}

		public boolean isAdminPresent(String email, String password) {
			Query query = entityManager.createQuery("select count(a) from Admin a where a.email = :em and a.password = :pw");
			query.setParameter("em", email);
			query.setParameter("pw", password);
			System.out.println("email is : "+email+" and password is : "+password);
			Long count = (Long) query.getSingleResult();
			System.out.println(count);
			if(count == 1)
				return true;
			return false;
		}

		
	}


