package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/AccountDeleteServlet")
public class AccountDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String id;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		   boolean isTrue;
		   isTrue = UserController.deleteAccount("id");

	            if (isTrue==true) {
	                String alertMessage = "Account deleted successfully.";
	                response.getWriter().println("<script>alert('" + alertMessage + "'); window.location.href='Register.jsp';</script>");
	            } else {
	               List<UserModel>UserDetails = UserController.getById(id);
	                request.setAttribute("UserDetails", UserDetails);
	                
	                RequestDispatcher dispatcher = request.getRequestDispatcher("wrong.jsp");
	                dispatcher.forward(request, response);
	            }
	        } 

}
