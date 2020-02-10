/*package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;
import org.hibernate.query.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Batch;
@Transactional
@Repository("batchDAO")
public class BatchDAOImpl implements BatchDAO{
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public Batch searchBatch(String studentID) {
		
		Query query =  sessionFactory.getCurrentSession().createQuery("from batch");
		return (Batch)query.getSingleResult();

	}

}*/
