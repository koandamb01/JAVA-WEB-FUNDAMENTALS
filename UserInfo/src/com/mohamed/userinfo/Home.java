package com.mohamed.userinfo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstName = req.getParameter("firstname");
		String lastName = req.getParameter("lastname");
		String language = req.getParameter("favoriteLanguage");
		String homeTown = req.getParameter("homeTown");
		
		if(firstName == null) {
			firstName = "Unknown";
		}
		
		if(lastName == null) {
			lastName = "Unknown";
		}
		
		if(language == null) {
			language = "Unknown";
		}
		
		if(homeTown == null) {
			homeTown = "Unknown";
		}
		
		res.setContentType("text/html");
		PrintWriter out = res.getWriter();
		
		String output = "<h1>Welcome, <span>" + firstName + " " + lastName + "</span></h1>"
				+ "<p> Your favorite language is: " + language +"</p>"
				+ "<p> Your Hometown is: " + homeTown;
		out.write(output);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
