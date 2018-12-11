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
		List<Movie> movieList =movieService.topMovie();
		req.setAttribute("movieList", movieList);
		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
