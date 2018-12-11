package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.User;
import service.UserService;
import service.serviceImpl.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserService userService=new UserServiceImpl();
   @Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	   String account=req.getParameter("account");
	   String pwd=req.getParameter("pwd");
	   String oper=req.getParameter("oper");
	   
	   if(oper==null || "".equals(oper)){
		   // 无操作
		   resp.sendRedirect("index.jsp");
		   return ;
	   }
	   
	   if("login".equals(oper)){
		   /**
		    *  用户进行登录操作 
		    */
		  User user=userService.login(account, pwd);
		  
		  if(user==null){
			  //登录失败
			  resp.getWriter().write("error");
			  return ;
		  }else{
			  System.out.println(66666);
			  //登录成功
			  resp.getWriter().write("index.jsp");
			  return ;
		  }
	   }
	}

}
