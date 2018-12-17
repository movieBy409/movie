package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order;
import bean.PageBean;
import bean.User;
import service.MovieService;
import service.UserService;
import service.serviceImpl.MovieServiceImpl;
import service.serviceImpl.UserServiceImpl;

/**
 * Servlet implementation class Backstage
 */
@WebServlet("/backstage")
public class Backstage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MovieService movieService = new MovieServiceImpl();
	private UserService userService = new UserServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String oper = req.getParameter("oper");
		if (oper == null || "".equals(oper)) {
			// 用户 不输入oper
		}
		// 显示订单
		if ("order".equals(oper)) {
			// 分页展示所有订单
			PageBean<Order> pagebean = new PageBean<Order>();
			int currentCount = 6;// 每页的个数
			String currentPageStr = req.getParameter("currentPage");
			if (currentPageStr == null)
				currentPageStr = "1";
			int currentPage = Integer.parseInt(currentPageStr); // 当前页码
			List<Order> allOrder = movieService.allOrder();
			int totalCount = allOrder.size();// 获得电影的总条数
			int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount); // 需要分页个数
			int index = (currentPage - 1) * currentCount;
			List<Order> pageOrder = movieService.pageOrder(index, currentCount);
			pagebean.setCurrentCount(currentCount);
			pagebean.setCurrentPage(currentPage);
			pagebean.setMovietList(pageOrder);
			pagebean.setTotalCount(totalCount);
			pagebean.setTotalPage(totalPage);
			req.setAttribute("pagebean", pagebean);
			req.getRequestDispatcher("book.jsp").forward(req, resp);
		}else if("delorder".equals(oper)) {
			//删除订单
			String oid =req.getParameter("oid");
			movieService.delOder(oid);
			resp.sendRedirect("backstage?oper=order");
		}else if("login".equals(oper)) {
			//账号登录
			String account =req.getParameter("account");
			String pwd =req.getParameter("pwd");
			User user = userService.login(account, pwd);
			if(user==null)
			{
				//登录密码错误
				resp.sendRedirect("login1.html");
			}
			else {
				resp.sendRedirect("back.jsp");
			}
			
		}

	}
}
