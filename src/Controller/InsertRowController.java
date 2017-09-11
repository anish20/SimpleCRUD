package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.User;
import DAO.UtilDao;

/**
 * Servlet implementation class InsertRowController
 */
@WebServlet("/InsertRowController")
public class InsertRowController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 User u=new User();
	     //u.setForn_no(Integer.parseInt(request.getParameter("row")));
	     int row=UtilDao.insertNew_Row(u);
	     if(row>0) {
	    	 response.sendRedirect("Viewusers.jsp");
	     }
	}

	

}
