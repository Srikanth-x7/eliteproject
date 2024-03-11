package Servlet;

import java.io.IOException;

import controllers.Sign_inController;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Sign_inServlet
 */
public class Sign_inServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sign_inServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    String email,pass;
	    email=request.getParameter("email");
	    pass=request.getParameter("password");
	    Sign_inController lc=new Sign_inController(email,pass);
	    if(lc.toStore()) {
	    	System.out.println("Done");	    	
	    	request.setAttribute("email", email);
	    	request.getRequestDispatcher("dashboardView.jsp").forward(request, response);
	    }else {
	    	System.out.println("error");
	    }
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
