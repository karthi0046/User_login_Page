package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import model.User;

@WebServlet("/findById")
public class FindByIdServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
         int id = Integer.parseInt(req.getParameter("id"));
		
		UserDAO dao =new UserDAO();
		
		try {
			User u =dao.getByid(id);
			
			req.setAttribute("u", u);
			
			RequestDispatcher dispatcher=req.getRequestDispatcher("Update.jsp");
			dispatcher.forward(req, resp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
