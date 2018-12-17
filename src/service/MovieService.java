package service;

import java.util.List;

import bean.MessageAndUser;
import bean.Movie;
import bean.Order;
import bean.PageBean;

public interface MovieService {
	List<Movie> topMovie();
	List<Movie> allMovie();
	List<Movie> pageMovie(int index,int currentCount);
	List<Movie> movieType(String mname);
	List<Movie> movieAmount (String start,String end);
	List<Movie> findMovie(String type);
	Movie movie(String mid);
	List<MessageAndUser> board(String movieid);
	List<Order> movieOrder(Long uid);

	List<Order> pageOrder(int index, int currentCount);
	void delOder(String oid);
    
    PageBean pageMovieToBack(String currentPage);
    
    int delMovieByMid(String mid);
    
    PageBean searchByKey(String key,String currentPage);
    
	List<Order> allOrder();
    
}
