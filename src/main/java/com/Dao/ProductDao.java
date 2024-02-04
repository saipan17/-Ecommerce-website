package com.Dao;
import com.model.Products;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.query.Query;


public class ProductDao {

    private Session session;

    public ProductDao(Session session){
        this.session = session;
    }

    public List<Products> getAllProducts() {

    	String hql = "FROM Products";
    	
        Query<Products> query = session.createQuery(hql, Products.class);
        
        return query.list();
    }
}
