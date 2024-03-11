package Servlet;

import java.io.IOException;

import controllers.Sign_upController;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Sign_upModel;

/**
 * Servlet implementation class Sign_upServlet
 */
public class Sign_upServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sign_upServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Sign_upModel rm=new Sign_upModel();
		rm.setName(request.getParameter("username"));
		rm.setPass(request.getParameter("password"));
		rm.setEmail(request.getParameter("email"));
		rm.setPhone(request.getParameter("phone"));
		
		Sign_upController rc=new Sign_upController(rm);
		rc.toStore();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
