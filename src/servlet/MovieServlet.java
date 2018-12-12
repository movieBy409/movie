package servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Movie;
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
         //主页显示排名前8的电影
		if ("index".equals(oper)) {

			List<Movie> movieList = movieService.topMovie();
			req.setAttribute("movieList", movieList);
			req.getRequestDispatcher("index.jsp").forward(req, resp);
			return;
		} else if ("all".equals(oper)) {
			//展示所有电影
			List<Movie> allmovie = movieService.allMovie();
			req.setAttribute("allmovie", allmovie);
			req.getRequestDispatcher("product-grid.jsp").forward(req, resp);
			return;
		}else if("movieinfo".equals(oper)) {
			//展示电影详细信息
			String mid = req.getParameter("mid");
			Movie movie = movieService.movie(mid);
			req.setAttribute("movie", movie);
			req.getRequestDispatcher("product-details.jsp").forward(req, resp);
		}

	}

}
