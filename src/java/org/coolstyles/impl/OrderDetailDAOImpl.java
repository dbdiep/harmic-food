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
            String sql = "INSERT INTO ORDER_DETAILS VALUES(null,?,?,?,?)";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, orderDetail.getOrderName());
            stmt.setInt(2, orderDetail.getOrderId());
            stmt.setInt(3, orderDetail.getProductId());
            stmt.setInt(4, orderDetail.getAmount());
            stmt.execute();
        } catch (SQLException ex) {
            Logger.getLogger("OrderDetailDAO").info(ex.toString());
            return false;
        }
        return true;
    }

    @Override
    public boolean update(OrderDetail orderDetail) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE ORDER_DETAILS SET PRODUCTS_ID=?, AMOUNT=?, ORDERS_NAME=? WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.getProductId());
            stmt.setInt(2, orderDetail.getAmount());
            stmt.setString(3, orderDetail.getOrderName());
            stmt.setInt(4, orderDetail.getId());
            stmt.execute();
        } catch (SQLException ex) {
            return false;
        }
        return true;
    }

    @Override
    public boolean delete(int orderDetailId) {
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "DELETE FROM ORDER_DETAILS WHERE ID=?";            
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetailId);
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
            ResultSet rs = stmt.executeQuery("SELECT * FROM ORDER_DETAILS");
            while(rs.next()){
                int id = rs.getInt("id");
                int productId = rs.getInt("products_id");
                int amount = rs.getInt("amount");
                String orderName = rs.getString("orders_name");
                int orderId = rs.getInt("orders_id");
                orderDetailList.add(new OrderDetail(id, orderName, orderId, productId, amount));
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
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ID=? LIMIT 1";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int productId = rs.getInt("products_id");
                int amount = rs.getInt("amount");
                String orderName = rs.getString("orders_name");
                int orderId = rs.getInt("orders_id");
                return new OrderDetail(id, orderName, orderId, productId, amount);
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
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ?=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, column);
            stmt.setString(2, value.toString());
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int productId = rs.getInt("products_id");
                int amount = rs.getInt("amount");
                String orderName = rs.getString("orders_name");
                int orderId = rs.getInt("orders_id");
                orderDetailList.add(new OrderDetail(id, orderName, orderId, productId, amount));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }

    @Override
    public List<OrderDetail> findByOrderName(String orderName) {
        List<OrderDetail> orderDetailList = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ORDERS_NAME=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, orderName);
            
            ResultSet rs = stmt.executeQuery();
            while(rs.next()){
                int id = rs.getInt("id");
                int productId = rs.getInt("products_id");
                int amount = rs.getInt("amount");
                int orderId = rs.getInt("orders_id");
                orderDetailList.add(new OrderDetail(id, orderName, orderId, productId, amount));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CRUDServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return orderDetailList;
    }
    
}
