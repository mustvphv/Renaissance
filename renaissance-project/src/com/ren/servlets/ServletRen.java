package com.ren.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ren_user.beans.*;

public class ServletRen extends HttpServlet {
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		
		String paramAuteur = request.getParameter( "user" );
		String message = "test variables : BON";
		
		
		/* Création du bean */
		User userBean = new User();
		/* Initialisation de ses propriétés */
		userBean.setLastname("DUPONT");
		userBean.setFirstname( "Jean" );
		
		request.setAttribute( "test", message );
		request.setAttribute( "user-informations", userBean );
		this.getServletContext().getRequestDispatcher( "/WEB-INF/first-jsp.jsp" ).forward( request, response );
	}
}
