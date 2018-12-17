package service.serviceImpl;

import java.util.ArrayList;
import java.util.List;
import bean.Message;
import bean.MessageAndUser;
import bean.Movie;
import bean.Order;
import bean.PageBean;
import bean.User;
import dao.DBHelper;
import service.MovieService;

public class MovieServiceImpl implements MovieService {
	//每页显示的 页数
	private int currentCount =3;
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
		/**
		 * 通过电影价格范围搜索
		 */
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
	public List<Order> movieOrder(Long uid) {
		/**
		 * 获得用户订单信息
		 */
		List<Order> orderList=DBHelper.select("select * from order1 where uid=?", Order.class,uid);	
		return orderList;
	}

	@Override
	public List<Order> allOder() {
		String sql="select * from order";
		List<Order> allOder = DBHelper.select(sql, Order.class);
		return allOder;
	}

	@Override
	public PageBean pageMovieToBack(String currentPage) {
		/**
		 * 后台分页显示
		 */
		int pageNumber=1;
		
		try {
			pageNumber=Integer.parseInt(currentPage);
		} catch (NumberFormatException e) {
			
			
		}
		int start = currentCount*(pageNumber -1) ; //   分页查询的起始页数
		
		
		List<Movie>list =DBHelper.select("select * from movie limit ?, ? ", Movie.class,start,currentCount );
		List<Movie>list1=DBHelper.select("select * from movie ", Movie.class);
		if(list==null || list.size()==0){
			return  null ;
		}
		PageBean page=new PageBean();
		page.setMovietList(list);
		page.setCurrentPage(pageNumber);
		page.setTotalPage((list1.size()%currentCount ==0)?(list1.size()/currentCount):(list1.size()/currentCount +1));
		return page;
	}

	@Override
	public int delMovieByMid(String mid) {
		
		
		int t= DBHelper.update("delete from movie  where mid =? ",mid);
		if(t>0){
			return 1;
		}else {
			return  0;
		}
	}

	@Override
	public PageBean searchByKey(String key,String currentPage) {
		/**
		 *  蘑菇查询
		 */
		int pageNumber=1;
		
		try {
			pageNumber=Integer.parseInt(currentPage);
		} catch (NumberFormatException e) {
			
			
		}
		int start = currentCount*(pageNumber -1) ; //   分页查询的起始页数
		List <Movie>list=DBHelper.select("select * from movie where mname like '%"+key+"%' limit ?, ? ", Movie.class,start,currentCount);
		PageBean page=new PageBean();
		if(list==null ||list.size()==0){
			return null;
		}
		
		page.setMovietList(list);
		List <Movie> list1=DBHelper.select("select * from movie where mname like '%"+key+"%' ", Movie.class);
		page.setCurrentPage(Integer.parseInt(currentPage));
		page.setTotalPage((list1.size()%currentCount ==0)?(list1.size()/currentCount):(list1.size()/currentCount +1));

		
		return page;
	}


}
