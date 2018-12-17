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
import bean.PageBean;
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
			
			String currentPage=req.getParameter("currentPage");
			if(currentPage==null || "".equals(currentPage)){
				currentPage="1";
			}
			PageBean page=movieService.pageMovieToBack(currentPage);
			req.setAttribute("movielist", "movielist");
			req.setAttribute("page",page);
			req.setAttribute("currentPage", currentPage);
			req.getRequestDispatcher("list.jsp").forward(req, resp);
			
			
			return ;
		}
		if("search".equals(oper)){
			String currentPage=req.getParameter("currentPage");
			
			if(currentPage==null|| "".equals(currentPage)){
				currentPage="1";
			}
			
			String key=req.getParameter("key");
			
			key = new String(key.getBytes("ISO-8859-1"), "utf-8").toString();
			req.setAttribute("search", "search");
			if(key!=null){
				req.setAttribute("key", key);
			}
			
			PageBean page=movieService.searchByKey(key,currentPage);
			req.setAttribute("page", page);
			req.setAttribute("currentPage", currentPage);
			req.getRequestDispatcher("list.jsp").forward(req, resp);
		}
		
		if("del".equals(oper)){
			// 删除电影
			String mid=req.getParameter("mid");
			
			String flag =movieService.delMovieByMid(mid)+"";
			
			resp.getWriter().write(flag);
			return ;
			
		}
		
		if("back".equals(oper)){
			req.getRequestDispatcher("back.jsp").forward(req, resp);
			return ;
		}
		// 显示订单
		if ("order".equals(oper)) {
			List<Order> allOder= movieService.allOder();
			
		}
		
    }
}
