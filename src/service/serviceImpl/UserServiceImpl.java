package service.serviceImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
		int result = DBHelper.update("update user set uimage = ? where uid = ?", uploadPath, uid);
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
			conn.setAutoCommit(false);// 开启事务
			Statement stmt = conn.createStatement();
			
			// 转出钱的方法
			stmt.executeUpdate("update user set money=money-" + price + "where uid=" + uid);
			// 转入钱的方法
			stmt.executeUpdate("update user set money=money+" + price + "where uid=1");
			// 订单的生成
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			Movie movie = (Movie) DBHelper.unique("select * from movie where mid=?", Movie.class, mid);
			User user = DBHelper.unique("select * from user where uid=?", User.class,uid);
			String format = sdf.format(date);
			String sql = "insert into order1 (uid,mid,odate,mname,mimage,price,uname) values (?,?,?,?,?,?,?)";
			PreparedStatement prestmt = conn.prepareStatement(sql);
			prestmt.setString(1, uid);
			prestmt.setString(2, mid);
			prestmt.setString(3, format);
			prestmt.setString(4, movie.getMname());
			prestmt.setString(5, movie.getMimage());
			prestmt.setString(6, price);
			prestmt.setString(7,user.getUname());
			prestmt.execute();
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
				isTranferSuccess = true;
				conn.commit();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return isTranferSuccess;
	}

	@Override
	public String updateInfo(User user) {
		/**
		 *    修改用户信息   
		 */
		
		int result=DBHelper.update("update user set uname=? , addr =? , birthday=? ,tel =? , "
				+ " sex =? , sign =? where uid=?",user.getUname() ,user.getAddr(),user.getBirthday(),
				user.getTel(),user.getSex(),user.getSign(),user.getUid()
				);
		if(result>0){
			// 修改成功
			return "修改成功";
		}else{
			// 修改失败
			return "修改失败";
		}
		
	}

	@Override
	public User userByUid(String uid) {
		String sql="select * from user where uid=?";
		User user = DBHelper.unique(sql, User.class,uid);
		return user;
	}

}
