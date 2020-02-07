package com.niit.dao;

import javax.transaction.Transactional;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Student;
@Transactional
@Repository("studentDAO")

public class StudentDAOImpl implements StudentDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public Student searchStudents(String attribute) 
	{
		return (Student) sessionFactory.getCurrentSession().createQuery("from Student where studentID like '"+attribute+"%'").uniqueResult();

	}

}
