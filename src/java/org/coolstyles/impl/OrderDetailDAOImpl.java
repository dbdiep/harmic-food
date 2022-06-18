/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.coolstyles.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.coolstyles.CRUDServlet;
import org.coolstyles.dao.OrderDetailDAO;
import org.coolstyles.db.MySQLDriver;
import org.coolstyles.model.Order;
import org.coolstyles.model.OrderDetail;

/**
 *
 * @author Admin
 */
public class OrderDetailDAOImpl implements OrderDetailDAO {

    @Override
    public boolean insert(OrderDetail orderDetail) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO ORDERDETAIL VALUES(null,?,?,?)";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.getProductId());
            stmt.setInt(2, orderDetail.getQuantity());
            stmt.setString(3, orderDetail.getOrderName());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean update(OrderDetail orderDetail) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE ORDERDETAIL SET PRODUCTID=?, QUANTITY=?, ORDERS_NAME=? WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.getProductId());
            stmt.setInt(2, orderDetail.getQuantity());
            stmt.setString(3, orderDetail.getOrderName());
            stmt.setInt(4, orderDetail.getId());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(OrderDetail orderDetail) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "DELETE FROM ORDERDETAIL WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.getId());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public List<OrderDetail> all() {
         List<OrderDetail> orderDetailList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM ORDERDETAIL");
            while(rs.next()){
                int id = rs.getInt("id");
                int productId = rs.getInt("productId");
                int quantity = rs.getInt("quantity");
                String orderName = rs.getString("orders_name");
                orderDetailList.add(new OrderDetail(id, productId, quantity, orderName));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }

    @Override
    public OrderDetail find(int id) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDERDETAIL WHERE ID=? LIMIT 1";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int productId = rs.getInt("productId");
                int quantity = rs.getInt("quantity");
                String orderName = rs.getString("orders_name");
                
                return new OrderDetail(id, productId, quantity, orderName);
            }
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    @Override
    public List<OrderDetail> findByProperty(String column, Object value) {
        List<OrderDetail> orderDetailList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDERDETAIL WHERE ?=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, column);
            stmt.setString(2, value.toString());
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int productId = rs.getInt("productId");
                int quantity = rs.getInt("quantity");
                String orderName = rs.getString("orders_name");
                
                orderDetailList.add(new OrderDetail(id, productId, quantity, orderName));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }
    
}
