package service.serviceImpl;

import bean.User;
import dao.DBHelper;
import service.UserService;

public class UserServiceImpl implements UserService {

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
		String sql ="insert into user (account,pwd) values (?,?)";
		DBHelper.insert(sql, account,pwd);
	}

}
