package service.serviceImpl;

import java.util.List;

import bean.Movie;
import dao.DBHelper;
import service.MovieService;

public class MovieServiceImpl implements MovieService {

	@Override
	/**
	 * 电影信息的获取
	 */
	public List<Movie> topMovie() {
		String sql ="select * from movie where mid<=8";
		List<Movie> movieList=DBHelper.select(sql, Movie.class);
		return movieList;
	}

}