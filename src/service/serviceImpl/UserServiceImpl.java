package service.serviceImpl;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;

import bean.Movie;
import bean.User;
import dao.DBHelper;
import service.UserService;

public class UserServiceImpl implements UserService {
	@Override
	public int updateHead(String uid, String uploadPath) {
		int result = DBHelper.update("update user set head = ? where uid = ?", uploadPath, uid);
		return result;
	}

	@Override
	public User login(String account, String pwd) {
		/**
		 * 实现 账号登录功能
		 */
		String sql = "select * from user where account=? and pwd =?";
		User user = DBHelper.unique(sql, User.class, account, pwd);
		if (user == null) {
			// 登录失败
			return null;
		} else {
			// 登录成功
			return user;
		}
	}

	@Override
	/**
	 * 注册功能
	 */
	public void register(String account, String pwd) {
		String sql = "insert into user (account,pwd) values (?,?)";
		DBHelper.insert(sql, account, pwd);
	}

	@Override
	public boolean transfer(String uid, String price, String mid) {
		boolean isTranferSuccess = true;
		Connection conn = null;
		try {
			conn = DBHelper.getCon();
			// 开启事务
			conn.setAutoCommit(false);// 开启事务
			Statement stmt = conn.createStatement();
			// 转出钱的方法
			stmt.executeUpdate("update user set money=money-" + price + "where uid=" + uid);
			// 转入钱的方法
			stmt.executeUpdate("update user set money=money+" + price + "where uid=1");
			
			//订单的生成
			Date date =new Date();
			SimpleDateFormat sdf =new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Movie movie = (Movie) DBHelper.unique("select * from movie where mid=?",Movie.class,mid);
			String format = sdf.format(date);
			DBHelper.update("insert into order1 values(7,?,?,?,?,?,?)",uid,mid,format,movie.getMname(),movie.getMimage(),price);
		} catch (Exception e) {
			isTranferSuccess = false;
			// 回滚事务
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				isTranferSuccess=true;
				conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isTranferSuccess;
	}

}
