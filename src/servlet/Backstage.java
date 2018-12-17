package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order;
import service.MovieService;
import service.serviceImpl.MovieServiceImpl;

/**
 * Servlet implementation class Backstage
 */
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
		// 显示订单
		if ("order".equals(oper)) {
			List<Order> allOder= movieService.allOder();
			
		}
		
    }
}
