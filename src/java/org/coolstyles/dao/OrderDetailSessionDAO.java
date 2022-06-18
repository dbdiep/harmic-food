/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.OrderDetailSession;

/**
 *
 * @author Administrator
 */
public interface OrderDetailSessionDAO {
    public boolean insert(OrderDetailSession orderDetailSession);
    public boolean update(OrderDetailSession orderDetailSession);
    public boolean delete(OrderDetailSession orderDetailSession);
    
    public List<OrderDetailSession> all();
    public OrderDetailSession find(int productId);
}
