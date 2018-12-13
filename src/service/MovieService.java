package service;

import java.util.List;

import bean.MessageAndUser;
import bean.Movie;

public interface MovieService {
	List<Movie> topMovie();
	List<Movie> allMovie();
	List<Movie> movieType(String mname);
	List<Movie> movieAmount (String start,String end);
	List<Movie> findMovie(String type);
	Movie movie(String mid);
	List<MessageAndUser> board(String movieid);
	
}
