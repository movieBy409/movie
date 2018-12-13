package service.serviceImpl;

import java.sql.Timestamp;
import java.util.List;

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

}
