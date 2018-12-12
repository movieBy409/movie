package service.serviceImpl;

import java.util.List;

import bean.Movie;
import dao.DBHelper;
import service.MovieService;

public class MovieServiceImpl implements MovieService {

	@Override
	/**
	 * 主页TOP8电影信息的获取
	 */
	public List<Movie> topMovie() {
		String sql ="select * from movie where mid<=8";
		List<Movie> movieList=DBHelper.select(sql, Movie.class);
		return movieList;
	}
     //所有电影展示
	@Override
	public List<Movie> allMovie() {
		String sql ="select * from movie";
		List<Movie> allmovie=DBHelper.select(sql, Movie.class);
		return allmovie;
	}
    //电影详细信息展示
	@Override
	public Movie movie(String mid) {
		String sql ="select * from movie where mid =?";
		Movie movie =DBHelper.unique(sql, Movie.class, mid);
		return movie;
	}

}
