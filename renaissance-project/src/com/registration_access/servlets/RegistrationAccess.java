package com.registration_access.servlets;

import java.io.IOException;
import com.ren.forms.*;
import com.ren_user.beans.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import javax.servlet.http.HttpServlet;

public class RegistrationAccess extends HttpServlet {
    
    public static final String ATTRIBUTE_USER = "utilisateur";
    public static final String ATTRIBUTE_FORM = "registerForm";
    public static final String VIEW = "/WEB-INF/register-page.jsp";
	
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        RegisterForm registerForm = new RegisterForm();
        
        User currentUser = registerForm.RegisterUser(request);
        
        
        request.setAttribute(ATTRIBUTE_FORM, registerForm);
        request.setAttribute(ATTRIBUTE_USER, currentUser);
        
        
		
        this.getServletContext().getRequestDispatcher(VIEW).forward(request, response);
    }

}