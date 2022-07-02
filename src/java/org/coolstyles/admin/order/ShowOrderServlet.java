/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.coolstyles.admin.order;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import org.coolstyles.dao.Database;
import org.coolstyles.dao.DatabaseDAO;
import org.coolstyles.dao.OrderDAO;
import org.coolstyles.dao.OrderDetailDAO;
import org.coolstyles.model.Order;
import org.coolstyles.model.OrderDetail;

/**
 *
 * @author Administrator
 */
public class ShowOrderServlet extends HttpServlet {

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
        
        int orderId = Integer.parseInt(request.getParameter("orderId"));
        DatabaseDAO.init(new Database());
        OrderDetailDAO orderDetailDAO = Database.getInstance().getOrderDetailDAO();
        OrderDAO orderDAO = Database.getInstance().getOrderDAO();
        Order order = orderDAO.find(orderId);
        log(orderId + ": orderId");
        log(order.getName() + ": orderName");
        
        List<OrderDetail> orderDetailList = orderDetailDAO.findByOrderName(order.getName());
        
        request.setAttribute("order", order);
        request.setAttribute("orderDetailList", orderDetailList);
        request.getRequestDispatcher("./admin/orders/show.jsp").forward(request, response);
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
