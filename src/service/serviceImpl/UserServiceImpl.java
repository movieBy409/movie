package service.serviceImpl;

import java.util.List;

import bean.User;
import dao.DBHelper;
import service.UserService;

public class UserServiceImpl implements UserService{

	@Override
	public User login(String account, String pwd) {
		/**
		 * 实现 账号登录功能
		 */
		User user=DBHelper.unique("select * from user where account=? and pwd =?", User.class, account,pwd);
		//List<User>list=DBHelper.select("select * form user", User.class);
		
		if(user==null){
			//登录失败
			return null;
			
		}else{
			//登录成功
			return user;
		}
		
	}

}
