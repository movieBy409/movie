package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BoardService;
import service.serviceImpl.BoardServiceImpl;

/**
 * Servlet implementation class Board
 */
@WebServlet("/board")
public class Board extends HttpServlet {
	private static final long serialVersionUID = 1L;
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	
    	String oper=req.getParameter("oper");
    	
    	if(oper!=null){
    		
    		if("board".equals(oper)){
    			String uid=req.getParameter("uid");
    			String mid=req.getParameter("mid");
    			String msg=req.getParameter("msg");
    			
    			System.out.println(uid+"  "+ mid+  " "+ msg);
    			
    			BoardService b=new BoardServiceImpl();
    			int t=b.insertBoard(mid, uid, msg);
    			if(t==0){
    				resp.getWriter().write("null");
    				
    			}else{
    				resp.getWriter().write("success");
    			}
    		}
    		
    	}
    }

}
