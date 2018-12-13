package service.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import bean.Message;
import bean.MessageAndUser;
import bean.Movie;
import bean.User;
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

	@Override
	public List<MessageAndUser> board(String movieid) {
		/**
		 *  加载  电影首页 留言板信息
		 */
		List<MessageAndUser>board=new ArrayList<MessageAndUser>();
		List<Message> mList=DBHelper.select("select * from message where movieid=?", Message.class, movieid);
		if(mList==null || mList.size()==0){
			return null;
		}
		for (Message message : mList) {
			User user=DBHelper.unique("select * from user where uid=?",User.class ,message.getUid1());
			if(user ==null){
				continue;
			}
			MessageAndUser mau=new MessageAndUser();
			mau.setMessage(message);
			mau.setUser(user);
			board.add(mau);
		}
		return board;
	}

}
