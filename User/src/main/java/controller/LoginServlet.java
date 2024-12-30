package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		
		UserDAO dao =new UserDAO();
		PrintWriter out=resp.getWriter();
		
		User u;
		try {
			u = dao.getByEmail(email);
		 
		
		if (u!=null) {
			
			if (u.getPassword().equals(password)) {
				
				 RequestDispatcher dispatcher=req.getRequestDispatcher("fetchAll");
				 dispatcher.forward(req, resp);
			}else {
				out.print("<h1>Incorrect Password</h1>");
				
				 RequestDispatcher dispatcher=req.getRequestDispatcher("Login.jsp");
				 dispatcher.forward(req, resp);
			}
			
			
		}else {
			
			out.print("<h1>Email not Found</h1>");
			 RequestDispatcher dispatcher=req.getRequestDispatcher("Login.jsp");
			 dispatcher.forward(req, resp);
		}
		
	}catch (Exception e) {
		
			e.printStackTrace();
		}
	}
}
