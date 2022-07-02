/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.User;

/**
 *
 * @author Admin
 */
public interface UserDAO {
    public boolean insert(User user);
    public boolean update(User user);
    public boolean delete(int userId);
    
    public List<User> all();
    public User find(int id);
    public List<User> findByProperty(String column, Object value);
    public User login(String username, String password);
    public boolean register(String username, String password);
}
