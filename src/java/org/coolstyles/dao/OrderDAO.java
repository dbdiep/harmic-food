/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.Order;

/**
 *
 * @author Admin
 */
public interface OrderDAO {
    public boolean insert(Order order);
    public boolean update(Order order);
    public boolean delete(Order order);
    
    public List<Order> all();
    public Order find(int id);
    public List<Order> findByProperty(String column, Object value);
}
