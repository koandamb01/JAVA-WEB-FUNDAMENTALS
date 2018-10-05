package com.roster.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.roster.web.models.Roster;
import com.roster.web.models.Team;

/**
 * Servlet implementation class Teams
 */
@WebServlet("/teams")
public class Teams extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Teams() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		if(req.getParameter("teamID") != null) {
			
			String teamID = req.getParameter("teamID");
			req.setAttribute("teamID", teamID);
			
			HttpSession session = req.getSession();
			Roster myRoster = (Roster) session.getAttribute("myRoster");
			req.setAttribute("myRoster", myRoster);
			
			RequestDispatcher view = req.getRequestDispatcher("WEB-INF/views/TeamInfo.jsp");
			view.forward(req, res);
		}
		else {
			RequestDispatcher view = req.getRequestDispatcher("WEB-INF/views/NewTeam.jsp");
			view.forward(req, res);
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException { 
		if(req.getParameter("teamName").isEmpty()) {
			req.setAttribute("teamNameErr", "*Team Name is required");
			RequestDispatcher view = req.getRequestDispatcher("WEB-INF/views/NewTeam.jsp");
			view.forward(req, res);
		}
		else {
			HttpSession session = req.getSession();
			Roster myRoster = (Roster) session.getAttribute("myRoster");
			
			// Create new Team
			Team newTeam = new Team(req.getParameter("teamName"));
			
			// add new team the roster
			myRoster.addTeam(newTeam);
			
			// redirect back to home
			res.sendRedirect("/Roster/Home");
		}
	}

}
