package service;

import java.util.List;
import bean.Movie;

public interface MovieService {
	List<Movie> topMovie();
	List<Movie> allMovie();
	List<Movie> findMovie(String mname);
	Movie movie(String mid);
	
}
