package service;

import java.util.List;
import bean.Movie;

public interface MovieService {
	List<Movie> topMovie();
	List<Movie> allMovie();
	Movie movie(String mid);
}
