/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.coolstyles.admin.product;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.coolstyles.dao.CategoryDAO;
import org.coolstyles.dao.Database;
import org.coolstyles.dao.DatabaseDAO;
import org.coolstyles.dao.ProductDAO;
import org.coolstyles.model.Category;
import org.coolstyles.model.Product;
import org.coolstyles.utils.URLSite;

/**
 *
 * @author Administrator
 */
public class CreateProductServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DatabaseDAO.init(new Database());
        CategoryDAO categoryDAO =  DatabaseDAO.getInstance().getCategoryDAO();
        List<Category> categoryList = categoryDAO.all();
        
        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("./admin/products/create.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String image = request.getParameter("image");
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        int categoryId = Integer.parseInt(request.getParameter("category"));
        double price = Double.parseDouble(request.getParameter("price"));
        DatabaseDAO.init(new Database());
        ProductDAO productDAO = DatabaseDAO.getInstance().getProductDAO();
        Product product = new Product(name, description, image, price, categoryId);
        
        productDAO.insert(product);
        response.sendRedirect(URLSite.ADMIN_INDEX_PRODUCT_URL);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
