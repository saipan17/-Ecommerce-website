package com.Controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class ProductController {

    private static SessionFactory sessionFactory;

    static {
        try {
            // Create the Hibernate SessionFactory
            Configuration configuration = new Configuration().configure("hibernate.cfg.xml");
            sessionFactory = configuration.buildSessionFactory();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static SessionFactory getSessionFactory(){
    	
        return sessionFactory;
    }

    public static Session getSession() {
    	
        return sessionFactory.openSession();
    }

    public static void closeSession(Session session) {
        if (session != null && session.isOpen()) {
            session.close();
        }
    }
}
