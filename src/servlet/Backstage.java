package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Movie;
import bean.Order;
import service.MovieService;
import service.serviceImpl.MovieServiceImpl;

@WebServlet("/backstage")
public class Backstage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MovieService movieService = new MovieServiceImpl();
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String oper = req.getParameter("oper");
		if (oper == null || "".equals(oper)) {
			// 用户 不输入oper
		}
		
		if("movielist".equals(oper)){
			List<Movie> list =movieService.allMovie();
			req.setAttribute("list",list);
			req.getRequestDispatcher("list.jsp").forward(req, resp);
			return ;
		}
		// 显示订单
		if ("order".equals(oper)) {
			List<Order> allOder= movieService.allOder();
			
		}
		
    }
}
