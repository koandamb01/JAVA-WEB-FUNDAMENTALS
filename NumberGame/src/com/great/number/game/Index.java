package com.great.number.game;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Index
 */
@WebServlet("/")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Index() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = req.getSession();
		
		if(session.getAttribute("counter") == null) {
			session.setAttribute("counter", 0);
			
			Random rand = new Random();
			int number = rand.nextInt(99) + 1;
			
			System.out.println("guess number: " + number);
			
			session.setAttribute("guessNumber", number);	
		}
		
		RequestDispatcher view = req.getRequestDispatcher("WEB-INF/views/Index.jsp");
		view.forward(req, res);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		int guess = Integer.parseInt(req.getParameter("userNumber"));
//		System.out.println(req.getParameter("userNumber"));
		// increment the number of user guesses
		session.setAttribute("counter", (int) session.getAttribute("counter") + 1);
		
		// check if the user guess the right number
		
		if( (int)session.getAttribute("guessNumber") == guess ) {
			session.setAttribute("answer", "right");
		}
		else {
			session.setAttribute("answer", "wrong");
		}
		
		// check if the user guess is too low/high
		if( guess > (int)session.getAttribute("guessNumber")) {
			session.setAttribute("hint", "Too high");
		}
		else {
			session.setAttribute("hint", "Too low");
		}
		
		res.sendRedirect("/NumberGame");
	}

}
