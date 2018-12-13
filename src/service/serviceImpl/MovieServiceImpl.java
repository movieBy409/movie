package service.serviceImpl;

import java.util.ArrayList;
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
		String sql = "select * from movie where mid<=8";
		List<Movie> movieList = DBHelper.select(sql, Movie.class);
		return movieList;
	}

	// 获得所有所有电影
	@Override
	public List<Movie> allMovie() {
		String sql = "select * from movie";
		List<Movie> allList = DBHelper.select(sql, Movie.class);
		return allList;
	}
    //分页电影
	public List<Movie> pageMovie(int index, int currentCount) {
		String sql = "select * from movie limit ?,?";
		List<Movie>  allmovie = DBHelper.select(sql, Movie.class,index,currentCount);
		return allmovie;

	}

	// 电影详细信息展示
	@Override
	public Movie movie(String mid) {
		String sql = "select * from movie where mid =?";
		Movie movie = DBHelper.unique(sql, Movie.class, mid);
		return movie;
	}

	@Override
	public List<Movie> findMovie(String mname) {
		String sql = "select * from movie";
		List<String> params = new ArrayList<>();
		if (mname != null && !mname.trim().equals("")) {
			sql += " where mname like ? ";
			params.add("%" + mname + "%");
		}
		List<Movie> findmovie = DBHelper.select(sql, Movie.class, params);
		return findmovie;
	}

	@Override
	public List<Movie> movieType(String type) {
		String sql = "select * from movie";
		List<String> params = new ArrayList<>();
		if (type != null && !type.trim().equals("")) {
			sql += " where type like ? ";
			params.add("%" + type + "%");
		}
		List<Movie> movietype = DBHelper.select(sql, Movie.class, params);
		return movietype;
	}

	@Override
	public List<Movie> movieAmount(String start, String end) {
		String sql = "select * from movie where price>=? and price<=? ";
		List<Movie> movieamount = DBHelper.select(sql, Movie.class, start, end);
		return movieamount;
	}

}
