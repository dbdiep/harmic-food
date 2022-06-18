/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

/**
 *
 * @author Admin
 */
public abstract class DatabaseDAO {
    private static DatabaseDAO instance;
    public static DatabaseDAO getInstance(){
        return instance;
    }
    
    public static void init(DatabaseDAO _instance){
        instance = _instance;
    }
    public abstract UserDAO getUserDAO();
    public abstract CategoryDAO getCategoryDAO();
    public abstract ProductDAO getProductDAO();
    public abstract OrderDAO getOrderDAO();
    public abstract OrderDetailDAO getOrderDetailDAO();
  
}
