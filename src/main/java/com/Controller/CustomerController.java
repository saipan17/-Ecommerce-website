package com.Controller;
import com.model.Customers;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class CustomerController {

	
	public boolean SaveInfromation(Customers cust) {
		
	  Configuration cfg = new Configuration();
	  cfg.configure();
	  SessionFactory factory= cfg.buildSessionFactory();
	   
	   Session session= factory.openSession();
	   Transaction tx= session.beginTransaction();
	   session.save(cust);
	    tx.commit();
	    session.close();
	     return true;
		
}
	 public String getPassword(String email) {
		 
		 Configuration cfg = new Configuration();
		 cfg.configure();
		 SessionFactory factory = cfg.buildSessionFactory();
		 Session session = factory.openSession();
		 
		 Query query = session.createQuery("from Customers");
		 
		 List <Customers> list = query.getResultList();
		 
		 for(Customers c : list) {
			 
			 if(c.getEmailId().equals(email)) {
				 
				 return c.getPassword();
			 }
		 }
		 return null;
		 
		 
	 }
	 
	public boolean validateSecurtiyquestion(String username , String question , String answers) {
		
		 Configuration cfg = new Configuration();
		 cfg.configure();
		 SessionFactory factory = cfg.buildSessionFactory();
		 Session session = factory.openSession();

		 Query query = session.createQuery("from Customers");
		 
		 List<Customers> list = query.getResultList();
		 
		 for(Customers c : list) {
			 
			 if(c.getEmailId().equals(username)) {
				 
				 return(c.getQuestions().equals(question) && c.getAnswers().equals(answers));
			 }
		 }
		 
		
		return false;
		
	}
	
	public boolean resetPassword(String email , String password) {
		
		 Configuration cfg = new Configuration();
		 cfg.configure(); 
		 SessionFactory factory = cfg.buildSessionFactory();
		 Session session = factory.openSession();

		 Transaction tx = session.beginTransaction();    
		 
		 Customers c = (Customers)session.get(Customers.class, email);  // dought 
	    
		 c.setPassword(password);
		 
		 session.update(c);
		 tx.commit();
		 return true;
		 
	}
}

