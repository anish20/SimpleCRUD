package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.User;
import DAO.UtilDao;

/**
 * Servlet implementation class PageController
 */
@WebServlet("/PageController")
public class PageController extends HttpServlet {
  
	private static final long serialVersionUID = 1L;
       
   
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();//used for printing on the page..
		String ch=request.getParameter("sr");
		String button=request.getParameter("btn");
		if(ch!=null && button.equals("Insert")){
			User u=new User();
			
			u.setFname(request.getParameter("fname"));// Accepts form parameter name which declared inside the HTLM tags 
			u.setLname(request.getParameter("lname"));
			u.setDob(request.getParameter("dob"));
			u.setAdd(request.getParameter("add"));
			u.setGender(request.getParameter("gender"));
			u.setQualification(request.getParameter("qualifiaction"));
			u.setEmail(request.getParameter("email"));
			long cont=Long.parseLong(request.getParameter("cot"));
			u.setContact(cont);
			int result=UtilDao.insertUser(u);
			if(result>0) {
				response.sendRedirect("Viewusers.jsp");
			}else {
				pw.println("Sorry Something went wrong..");
			}
					
		}else if(button.equals("cancel")){
			response.sendRedirect("Form-1.jsp");

		}
		
		else if(button.equals("Update")) {
			User u=new User();
			u.setForn_no(Integer.parseInt(request.getParameter("fn")));
			u.setFname(request.getParameter("fname"));// Accepts form parameter name which declared inside the HTLM tags 
			u.setLname(request.getParameter("lname"));
			u.setDob(request.getParameter("dob"));
			u.setAdd(request.getParameter("add"));
			u.setGender(request.getParameter("gender"));
			u.setQualification(request.getParameter("qlf"));
			u.setEmail(request.getParameter("email"));
			long cont=(Long.parseLong(request.getParameter("cot")));
			u.setContact(cont);
			int update=UtilDao.updateUser(u);
			if(update>0) {
				response.sendRedirect("Viewusers.jsp");
				System.out.println(button);
			}else {
				pw.println("Not Success..");
			}
			
		}
		
		
		else{
			pw.print("Sorry..");
		}
	}
	
@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();//used for printing on the page..
		int frn=Integer.parseInt(request.getParameter("fn"));
		User u=new User();
		u.setForn_no(frn);
		if(frn!=0) {
			
			int rs=UtilDao.deleteByForm_No(u);
		     if(rs>0) {
		    	 response.sendRedirect("Viewusers.jsp");
		     }else {
		    	pw.println("Something went wrong.."); 
		     }	
		}
		
	}

}
