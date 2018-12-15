package servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadBase.FileSizeLimitExceededException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bean.User;
import service.UserService;
import service.serviceImpl.UserServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserServiceImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String account = req.getParameter("account");
		String pwd = req.getParameter("pwd");
		String oper = req.getParameter("oper");

		if (oper == null || "".equals(oper)) {
			// 无操作
			resp.sendRedirect("index.jsp");
			return;
		}

		System.out.println(oper);
		
		if ("login".equals(oper)) {
			/**
			 * 用户进行登录操作
			 */
			User user = userService.login(account, pwd);
			if (user == null) {
				// 登录失败
				resp.getWriter().write("error");
				return;
			} else {
				// 登录成功  将user 写进去
				user.setPwd("");
				req.getSession().setAttribute("user", user);
				resp.getWriter().write("movie?oper=index&account="+account);
				return;
			}
		}else if("register".equals(oper)){
			/**
			 * 对用户进行注册操作
			 */
			userService.register(account, pwd);
		}else if ("updateHead".equals(oper)) {
			updateHead(req, resp);
			return;
		}else if("info".equals(oper)){
			req.getRequestDispatcher("info.jsp").forward(req, resp);
			return  ;
		}
	}
	
	private void updateHead(HttpServletRequest req, HttpServletResponse resp) {
		String uid = req.getParameter("uid");
		
		// 创建接收文件的工厂类
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 常见文件解析对象
		ServletFileUpload sfu = new ServletFileUpload(factory);
		// 设置单个文件的最大值，以字节为单位
		sfu.setFileSizeMax(1024*1024*2);
		List<FileItem> fList;
		try {
			fList = sfu.parseRequest(req);
			FileItem fi = fList.get(0);
			// 获取原始文件名
			String name = fi.getName();
			// 获得文本域的名字
			String fieldName = fi.getFieldName();
			// 是否是普通文本
			boolean formField = fi.isFormField();
			if (!formField) {
				if (fieldName != null && !"".equals(fieldName)) {
					// 生成UUID文件名，使文件名不会重复
					String uuid = UUID.randomUUID().toString();
					uuid = uuid.replaceAll("-", "");
					// 获得原始文件名的后缀名
					String suffix = name.substring(name.lastIndexOf("."));
					// 指定要上传的目录
					String tuploadPath = req.getSession().getServletContext().getRealPath("/upload");
					String uploadPath = "D:/upload";
					// 创建文件对象
					File tfile = new File(tuploadPath, uuid + suffix);
					File file = new File(uploadPath, uuid + suffix);
					InputStream is = fi.getInputStream();
					//写入磁盘
					fi.write(tfile);
					InputStream bis = new BufferedInputStream(is);
					OutputStream bos = new BufferedOutputStream(new FileOutputStream(file));
					byte[] bs = new byte[1024];
					int length = 0;
					while((length = bis.read(bs, 0, bs.length)) != -1){
						bos.write(bs, 0, bs.length);
						bos.flush();//清空缓冲区，迫使缓冲区的数据全部写出
					}
					bis.close();
					bos.close();
					tuploadPath = "upload/" + uuid + suffix;
					int result = userService.updateHead(uid,tuploadPath);
					if(result > 0){
						resp.getWriter().append("头像上传成功");
						User u=(User) req.getSession().getAttribute("user");
						u.setUimage(tuploadPath);
					}else{
						resp.getWriter().append("服务繁忙，请稍后重试");
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if( e instanceof FileSizeLimitExceededException){
					resp.getWriter().append("上传失败，图片过大");
				}else{
					resp.getWriter().append("服务繁忙，请稍后重试");
				}
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
	}

}
