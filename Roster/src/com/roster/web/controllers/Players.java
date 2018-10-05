package com.roster.web.controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.roster.web.models.Player;
import com.roster.web.models.Roster;
import com.roster.web.models.Team;

/**
 * Servlet implementation class Players
 */
@WebServlet("/players")
public class Players extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Players() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		RequestDispatcher view = req.getRequestDispatcher("WEB-INF/views/NewPlayer.jsp");
		view.forward(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		boolean isFormValid = false;
		HttpSession session = req.getSession();
		
		System.out.println("im here player doPOST");
		// check if all inputs fields are fill;
		if(req.getParameter("firstName").isEmpty()) {
			req.setAttribute("firstNameErr", "*First Name is required");
			isFormValid = true;
		}else {
			req.setAttribute("firstName", req.getParameter("firstName"));
		}
		
		if(req.getParameter("lastName").isEmpty()) {
			req.setAttribute("lastNameErr", "*Last Name is required");
			isFormValid = true;
		}else {
			req.setAttribute("lastName", req.getParameter("lastName"));
		}
		
		if(req.getParameter("age").isEmpty()) {
			req.setAttribute("ageErr", "*Age is required");
			isFormValid = true;
		}else {
			try {
				int age = Integer.parseInt(req.getParameter("age"));
			}
			catch (Exception e) {
				req.setAttribute("ageErr", "*Age must be number only");
				isFormValid = true;
			}
			req.setAttribute("age", req.getParameter("age"));
		}
		
		if(isFormValid) {
			RequestDispatcher view = req.getRequestDispatcher("WEB-INF/views/NewPlayer.jsp");
			view.forward(req, res);
		}
		
		// form validation pass, now create a player
		String fistName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		int age = Integer.parseInt(req.getParameter("age"));
		Player newPlayer = new Player(fistName, lastName, age);
		
		// get the roster
		Roster myRoster = (Roster) session.getAttribute("myRoster");
		// get the target team
		Team myTeam = myRoster.findTeamById(req.getParameter("id"));
		
		// Now add the player to the target team
		myTeam.addPlayer(newPlayer);
		
		// now redirect back the target team info page
		res.sendRedirect("/Roster/teams?teamID=" + req.getParameter("id"));
		
	}

}
