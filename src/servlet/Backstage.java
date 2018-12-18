package servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import bean.Message;
import bean.MessageAndUser;
import bean.Movie;
import bean.Order;
import bean.PageBean;
import bean.User;
import service.BoardService;
import service.MovieService;
import service.UserService;
import service.serviceImpl.BoardServiceImpl;
import service.serviceImpl.MovieServiceImpl;
import service.serviceImpl.UserServiceImpl;

@WebServlet("/backstage")
@MultipartConfig
public class Backstage extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MovieService movieService = new MovieServiceImpl();
	private UserService userService = new UserServiceImpl();
	private BoardService boardService = new BoardServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String oper = req.getParameter("oper");
		if (oper == null || "".equals(oper)) {
			// 用户 不输入oper
		}
		if ("movielist".equals(oper)) {
			String currentPage = req.getParameter("currentPage");
			if (currentPage == null || "".equals(currentPage)) {
				currentPage = "1";
			}
			PageBean page=movieService.pageMovieToBack(currentPage);
			req.setAttribute("movielist", "movielist");
			req.setAttribute("page",page);
			req.setAttribute("currentPage", currentPage);
			req.getRequestDispatcher("list.jsp").forward(req, resp);
			return;
		}
		if("search".equals(oper)){
			String currentPage=req.getParameter("currentPage");
			
			if(currentPage==null|| "".equals(currentPage)){
				currentPage="1";
			}
			
			String key=req.getParameter("key");
			if(key!=null){
				key = new String(key.getBytes("ISO-8859-1"), "utf-8").toString();
			}
			
			req.setAttribute("search", "search");
			if(key!=null){
				req.setAttribute("key", key);
			}
			
			PageBean page=movieService.searchByKey(key,currentPage);
			req.setAttribute("page", page);
			req.setAttribute("currentPage", currentPage);
			req.getRequestDispatcher("list.jsp").forward(req, resp);
		}
		
		if ("del".equals(oper)) {
			// 删除电影
			String mid = req.getParameter("mid");
			String flag = movieService.delMovieByMid(mid) + "";
			resp.getWriter().write(flag);
			return;
		}

		if ("back".equals(oper)) {
			req.getRequestDispatcher("back.jsp").forward(req, resp);
			return;
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
		} else if ("delorder".equals(oper)) {
			// 删除订单
			String oid = req.getParameter("oid");
			movieService.delOder(oid);
			resp.sendRedirect("backstage?oper=order");
		} else if ("login".equals(oper)) {
			// 账号登录
			String account = req.getParameter("account");
			String pwd = req.getParameter("pwd");
			User user = userService.login(account, pwd);
			if (user == null) {
				// 登录密码错误
				resp.sendRedirect("login1.html");
			} else {
				resp.sendRedirect("back.jsp");
			}
		}else if("addmovie".equals(oper)) {
			//添加电影
			
			
			Part part=req.getPart("mimage");
			
			String filename=part.getHeader("Content-Disposition");
			String filePath=filename.substring(filename.lastIndexOf("=")+2, filename.length()-1);
			//System.out.println(filePath);
			
			String realPath=this.getServletContext().getRealPath("/images/product");
			//System.out.println(realPath+"\\"+filePath);
			part.write(realPath+"\\"+filePath);
			
			String path="images/product/"+filePath;
			
			//System.out.println(path);
			
			Movie movie =new Movie ();
			Map<String, String[]> properties = req.getParameterMap();
			try {
				BeanUtils.populate(movie, properties);
			} catch (IllegalAccessException | InvocationTargetException e) {
				e.printStackTrace();
			}
            movieService.addMovie(movie);
            req.getRequestDispatcher("backstage?oper=movielist").forward(req, resp);
		}else if("message".equals(oper)) {
			//留言管理
			PageBean<MessageAndUser> pagebean = new PageBean<MessageAndUser>();
			int currentCount = 6;// 每页的个数
			String currentPageStr = req.getParameter("currentPage");
			if (currentPageStr == null)
				currentPageStr = "1";
			int currentPage = Integer.parseInt(currentPageStr); // 当前页码
			List<Message> allMessage =boardService.allMessage();
			int totalCount = allMessage.size();// 获得电影的总条数
			int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount); // 需要分页个数
			int index = (currentPage - 1) * currentCount;
			List<MessageAndUser> pageMessage = boardService.pageMessage(index, currentCount);
			pagebean.setCurrentCount(currentCount);
			pagebean.setCurrentPage(currentPage);
			pagebean.setMovietList(pageMessage);
			pagebean.setTotalCount(totalCount);
			pagebean.setTotalPage(totalPage);
			req.setAttribute("pagebean", pagebean);
			req.getRequestDispatcher("message.jsp").forward(req, resp);
		}else if("delmessage".equals(oper)) {
			//删除留言
			String mid =req.getParameter("mid");
			boardService.delMessage(mid);
			resp.sendRedirect("backstage?oper=message");
		}

	}
}
