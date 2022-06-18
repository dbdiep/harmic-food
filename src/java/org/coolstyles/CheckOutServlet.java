/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package org.coolstyles;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import org.coolstyles.auth.Auth;
import org.coolstyles.dao.Database;
import org.coolstyles.dao.DatabaseDAO;
import org.coolstyles.dao.OrderDAO;
import org.coolstyles.dao.OrderDetailDAO;
import org.coolstyles.model.Order;
import org.coolstyles.model.OrderDetail;
import org.coolstyles.model.OrderDetailSession;
import org.coolstyles.utils.StringHelper;

/**
 *
 * @author Administrator
 */
public class CheckOutServlet extends HttpServlet {
    

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
        Auth.init(request.getSession());
        if(!Auth.isLogin()) response.sendRedirect("LoginServlet");
        
        
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
     * Checkout
     */
    
    private void checkOut(HttpServletRequest request, HttpServletResponse response) throws IOException{
        DatabaseDAO.init(new Database());
        OrderDAO orderDAO = DatabaseDAO.getInstance().getOrderDAO();
        String name = StringHelper.randomString(Order.CODE_LENGHT);
        String description = "Order san pham";
        Order order = new Order(0, name, description, Order.PENDING_STATUS);
        orderDAO.insert(order);
        
        OrderDetailDAO orderDetailDAO = DatabaseDAO.getInstance().getOrderDetailDAO();
        HttpSession session = request.getSession();
        List<OrderDetailSession> orderDetailSessionList = null;
        if(session.getAttribute("cart") != null){
            //Ton tai gio hang
            orderDetailSessionList = (List<OrderDetailSession>) session.getAttribute("cart");
            for (OrderDetailSession ods : orderDetailSessionList) {
                OrderDetail orderDetail = new OrderDetail(0, ods.getProductId(), ods.getQuantity(), name);
                orderDetailDAO.insert(orderDetail);
            }
        }
        
        //Xoa gio hang
        session.removeAttribute("cart");
        response.sendRedirect("HomeServlet");
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
