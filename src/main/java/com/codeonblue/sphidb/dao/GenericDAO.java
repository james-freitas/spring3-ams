package com.codeonblue.sphidb.dao;

import java.util.List;

public interface GenericDAO<T> {

	public List<T> listPaginated(int offset, int max);
	
	public List<T> list();
	
	public void persist(T object);
	
	public void delete(T object);
	
	public T getById(int id);
	
}
