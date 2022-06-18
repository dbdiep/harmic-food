/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import org.coolstyles.impl.CategoryDAOImpl;
import org.coolstyles.impl.OrderDAOImpl;
import org.coolstyles.impl.OrderDetailDAOImpl;
import org.coolstyles.impl.ProductDAOImpl;
import org.coolstyles.impl.UserDAOImpl;

/**
 *
 * @author Admin
 */
public class Database extends DatabaseDAO {

    
    @Override
    public UserDAO getUserDAO() {
        return new UserDAOImpl();
    }

    @Override
    public CategoryDAO getCategoryDAO() {
        return new CategoryDAOImpl();
    }

    @Override
    public ProductDAO getProductDAO() {
        return new ProductDAOImpl();
    }

    @Override
    public OrderDAO getOrderDAO() {
      return new OrderDAOImpl();
    }

    @Override
    public OrderDetailDAO getOrderDetailDAO() {
      return new OrderDetailDAOImpl();
    }
    
}
