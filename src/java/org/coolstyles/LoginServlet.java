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
import org.coolstyles.dao.Database;
import org.coolstyles.dao.DatabaseDAO;
import org.coolstyles.dao.UserDAO;
import org.coolstyles.model.User;
import org.coolstyles.utils.URLSite;

/**
 *
 * @author Administrator
 */
public class LoginServlet extends HttpServlet {


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
        HttpSession session = request.getSession(true);
        if (session.getAttribute("logged") != null) {
            response.sendRedirect(URLSite.HOME_URL);
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
      
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
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        DatabaseDAO.init(new Database());
        UserDAO userDAO = DatabaseDAO.getInstance().getUserDAO();
        User user = userDAO.login(email, password);
        if (user != null) {
            System.out.println("Login successfully.");
            HttpSession session = request.getSession(true);
            
            session.setAttribute("logged", true);
            session.setAttribute("user", user);
            String url = (String) session.getAttribute("urlBack");
            if (url != null) response.sendRedirect(url);
            else
            response.sendRedirect(URLSite.HOME_URL);
        } else {
            System.out.println("Login failed.");
            response.sendRedirect(URLSite.LOGIN_URL);
        }
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
