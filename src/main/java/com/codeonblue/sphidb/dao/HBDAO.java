package com.codeonblue.sphidb.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class HBDAO<T> implements GenericDAO<T> {

	@Autowired
	protected SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}
	
	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}
	
	protected Session getSession() {
		return getSessionFactory().getCurrentSession();
	}
	
	
	protected abstract Class getClazz();
	
	@Override
	public List<T> listPaginated(int offset, int max) {
		return (List<T>) getSession().createCriteria(getClazz())
				.setMaxResults(max).setFirstResult(offset).list();
	}

	@Override
	public List<T> list() {
		return (List<T>) getSession().createCriteria(getClazz()).list();
	}

	@Override
	public void persist(T object) {
		getSession().saveOrUpdate(object);
		
	}

	@Override
	public void delete(T object) {
		getSession().delete(object);
		
	}

	@Override
	public T getById(int id) {
		return (T) getSession().get(getClazz(), id);
	}

}
