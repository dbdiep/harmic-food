/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.coolstyles.auth;

import jakarta.servlet.http.HttpSession;
import org.coolstyles.model.User;

/**
 *
 * @author Administrator
 */
public class Auth {
    private static HttpSession session;
    
    public static void init(HttpSession _session){
        session = _session;
    }
    public static User user(){
        if(session.getAttribute("user") != null){
            return (User) session.getAttribute("user");
        }
        return null;
    }
    
    public static boolean isLogin(){
        return user() == null ? false : true;
    }
    
    public static boolean isAdmin(){
        if(user() == null) return false;
        return user().role.equals("admin");
    }
}
