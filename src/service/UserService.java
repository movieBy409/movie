package service;

import bean.User;

public interface UserService {
 
	User login(String account,String pwd);
	void register(String account,String pwd);
	int updateHead(String uid, String uploadPath);
	boolean transfer(String uid ,String price,String mid); 
}
