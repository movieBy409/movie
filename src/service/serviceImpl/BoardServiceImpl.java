package service.serviceImpl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import bean.Message;
import bean.MessageAndUser;
import bean.User;
import dao.DBHelper;
import service.BoardService;

public class BoardServiceImpl implements BoardService {

	@Override
	public int insertBoard(String mid, String uid, String msg) {
		
		Timestamp time=new Timestamp(System.currentTimeMillis());
		List<List<Object>>list=DBHelper.insert("insert into  message(movieid,uid1,msg,mdate) value(?,?,?,?)", mid,uid,msg,time);
		
		if(list==null || list.size()==0){
			return 0 ;
		}
		return 1;
	}

	@Override
	public List<Message> allMessage() {
		/**
		 * 获取所有电影
		 */
		String sql="select * from message";
		List<Message> allMessage = DBHelper.select(sql, Message.class);
		return allMessage;
	}

	@Override
	public List<MessageAndUser> pageMessage(int index, int currentCount) {
		/**
		 * 留言分页处理
		 */
		List<MessageAndUser> pageMessage =new ArrayList<MessageAndUser>();
		String sql="select * from message limit ?,?";
		List<Message> message = DBHelper.select(sql, Message.class,index,currentCount);
		
		for (Message message2 : message) {
			MessageAndUser meu=new MessageAndUser();
			User user=DBHelper.unique("select * from user where uid =?", User.class, message2.getUid1());
			meu.setMessage(message2);
			meu.setUser(user);
			pageMessage.add(meu);
		}
		return pageMessage;
	}

	@Override
	public void delMessage(String mid) {
		/**
		 * 删除留言操作
		 */
		DBHelper.update("DELETE FROM message WHERE mid=?", mid);
		
	}

}
