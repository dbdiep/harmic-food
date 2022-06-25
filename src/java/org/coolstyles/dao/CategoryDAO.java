/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.Category;

/**
 *
 * @author Admin
 */
public interface CategoryDAO {
    public boolean insert(Category category);
    public boolean update(Category category);
    public boolean delete(int categoryId);
    
    public List<Category> all();
    public Category find(int id);
    public List<Category> findByProperty(String column, Object value);
}
