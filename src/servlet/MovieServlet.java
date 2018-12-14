package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.MessageAndUser;
import bean.Movie;
import bean.PageBean;
import service.MovieService;
import service.serviceImpl.MovieServiceImpl;
import service.serviceImpl.UserServiceImpl;

/**
 * Servlet implementation class MovieServlet
 */
@WebServlet("/movie")
public class MovieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MovieService movieService = new MovieServiceImpl();

	@Override

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String oper = req.getParameter("oper");

		if (oper == null || "".equals(oper)) {
			// 用户 不输入oper
		}
		// 主页显示排名前8的电影
		if ("index".equals(oper)) {
			
            String account=req.getParameter("account");
            
			List<Movie> movieList = movieService.topMovie();
			req.setAttribute("movieList", movieList);
			req.getRequestDispatcher("index.jsp").forward(req, resp);
			return;
		} else if ("all".equals(oper)) {
			// 分页展示所有电影
			PageBean pagemovie = new PageBean();
			int currentCount = 9;// 每页的个数
			String currentPageStr = req.getParameter("currentPage");
			if (currentPageStr == null)
				currentPageStr = "1";
			int currentPage = Integer.parseInt(currentPageStr); // 当前页码
			List<Movie> allList = movieService.allMovie();
			int totalCount = allList.size();// 获得电影的总条数
			int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount); // 需要分页个数
			int index = (currentPage - 1) * currentCount;
			List<Movie> allmovie = movieService.pageMovie(index, currentCount);
			pagemovie.setCurrentCount(currentCount);
			pagemovie.setCurrentPage(currentPage);
			pagemovie.setMovietList(allmovie);
			pagemovie.setTotalCount(totalCount);
			pagemovie.setTotalPage(totalPage);
			req.setAttribute("allmovie", pagemovie);
			req.getRequestDispatcher("product-grid.jsp").forward(req, resp);
			return;

		} else if ("movieinfo".equals(oper)) {
			// 展示电影详细信息
			String mid = req.getParameter("mid");
			Movie movie = movieService.movie(mid);
			List<MessageAndUser>board= movieService.board(mid);
			req.setAttribute("board", board);
			if(board==null)
			{
				req.setAttribute("number", 0);
			}
			else{
				req.setAttribute("number", board.size());
			}
			
			req.setAttribute("movie", movie);
			
			req.getRequestDispatcher("product-details.jsp").forward(req, resp);
		} else if ("findmovie".equals(oper)) {
			// 通过电影名字搜索
			PageBean pagemovie = new PageBean();
			int currentCount = 9;// 每页的个数
			String currentPageStr = req.getParameter("currentPage");
			if (currentPageStr == null)
				currentPageStr = "1";
			int currentPage = Integer.parseInt(currentPageStr); // 当前页码
			String mname = req.getParameter("mname");
			List<Movie> findmovie = movieService.findMovie(mname);
			int totalCount = findmovie.size();// 获得电影的总条数
			int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount);
			pagemovie.setMovietList(findmovie);
			pagemovie.setCurrentCount(currentCount);
			pagemovie.setTotalCount(totalCount);
			pagemovie.setTotalPage(totalPage);
			pagemovie.setCurrentPage(currentPage);
			req.setAttribute("allmovie", pagemovie);
			req.getRequestDispatcher("product-grid.jsp").forward(req, resp);
		} else if ("movietype".equals(oper)) {
			// 通过电影类型搜素
			// 分页展示所有电影
			PageBean pagemovie = new PageBean();
			int currentCount = 9;// 每页的个数
			String currentPageStr = req.getParameter("currentPage");
			if (currentPageStr == null)
				currentPageStr = "1";
			int currentPage = Integer.parseInt(currentPageStr); // 当前页码
			String type = req.getParameter("type");
			type = new String(type.getBytes("ISO-8859-1"), "utf-8").toString();
			List<Movie> movietype = movieService.movieType(type);
			int totalCount = movietype.size();// 获得电影的总条数
			int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount); // 需要分页个数
			pagemovie.setMovietList(movietype);
			pagemovie.setCurrentCount(currentCount);
			pagemovie.setTotalCount(totalCount);
			pagemovie.setTotalPage(totalPage);
			pagemovie.setCurrentPage(currentPage);
			req.setAttribute("allmovie", pagemovie);
			req.getRequestDispatcher("product-grid.jsp").forward(req, resp);
		} else if ("movieamount".equals(oper)) {
			PageBean pagemovie = new PageBean();
			int currentCount = 9;// 每页的个数
			String currentPageStr = req.getParameter("currentPage");
			if (currentPageStr == null)
				currentPageStr = "1";
			int currentPage = Integer.parseInt(currentPageStr); // 当前页码
			String amount = req.getParameter("amount");
			if (amount != null && !"".equals(amount)) {
				
				String start = amount.substring(amount.indexOf("Y") + 1, amount.indexOf("-"));
				String end = amount.substring(amount.lastIndexOf("Y") + 1);
				List<Movie> movieamount = movieService.movieAmount(start, end);
				int totalCount = movieamount.size();// 获得电影的总条数
				int totalPage = (int) Math.ceil(1.0 * totalCount / currentCount); // 需要分页个数
				pagemovie.setMovietList(movieamount);
				pagemovie.setCurrentCount(currentCount);
				pagemovie.setTotalCount(totalCount);
				pagemovie.setTotalPage(totalPage);
				pagemovie.setCurrentPage(currentPage);
				req.setAttribute("allmovie", pagemovie);
				req.setAttribute("amount", amount);
			}
			
			req.getRequestDispatcher("product-grid.jsp").forward(req, resp);
		}else if("like".equals(oper)){
			
			// 喜欢  收藏功能
			String uid=req.getParameter("uid");
			String mid=req.getParameter("mid");
			
		}

	}

}
