/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.OrderDetail;

/**
 *
 * @author Admin
 */
public interface OrderDetailDAO {
    public boolean insert(OrderDetail orderDetail);
    public boolean update(OrderDetail orderDetail);
    public boolean delete(int orderDetailId);
    
    public List<OrderDetail> all();
    public OrderDetail find(int id);
    public List<OrderDetail> findByProperty(String column, Object value);
    public List<OrderDetail> findByOrderName(String orderName);
}
