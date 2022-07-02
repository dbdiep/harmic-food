/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.coolstyles.dao;

import java.util.List;
import org.coolstyles.model.Product;

/**
 *
 * @author Admin
 */
public interface ProductDAO {
    public boolean insert(Product product);
    public boolean update(Product product);
    public boolean delete(int productId);
    
    public List<Product> all();
    public Product find(int id);
    public List<Product> findByProperty(String column, Object value);
    public List<Product> findByNameAndCategoryId(String name, int categoryId);
    public List<Product> findByName(String name);
    public List<Product> findByCategoryId(int categoryId);
}
