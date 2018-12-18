package service;

import java.util.List;
import bean.Message;
import bean.MessageAndUser;

public interface BoardService {

	int insertBoard(String mid ,String uid,String msg);
	List<Message> allMessage();
	List<MessageAndUser> pageMessage(int index, int currentCount);
	void delMessage(String mid);
}
