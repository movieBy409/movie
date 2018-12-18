<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
    <title></title>  
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>  
</head>
<body>
<form method="post" action="">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder">留言管理</strong></div>
    <table class="table table-hover text-center">
      <tr>
        <th width="120">序号</th>
        <th width="120">留言编号</th>       
        <th width="10%">留言电影</th>
        <th width="120">留言者</th>
        <th>留言信息</th>
        <th width="120">留言时间</th>
        <th width="120">操作</th>       
      </tr>      
        <c:forEach items="${pagebean.movietList}" var="ms" varStatus="vs" > 
	        <tr>
	          <td>${vs.count }</td>
	          <td>${ms.message.mid }</td>
	          <td>${ms.message.movieid} </td> 
	          <td>${ms.user.uname}</td> 
	          <td>${ms.message.msg}</td>        
	          <td>${ms.message.mdate}</td>
	          <td>
		          <div class="button-group">
		          	 <a class="button border-red" href="javascript:void(0)" onclick="return del('${ms.message.mid}')">
		          	 <span class="icon-trash-o"></span> 删除</a> 
		          </div>
	          </td>
	        </tr>
        </c:forEach>
        
      <tr>
        <td colspan="8">
	        <div class="pagelist"> 
	           <!-- 前一页按钮 -->
				<c:if test="${pagebean.currentPage==1 }">
					<a href="javascript:void(0);">上一页</a>
				</c:if>
				<c:if test="${pagebean.currentPage!=1 }">
                   <a href="backstage?oper=message&currentPage=${pagebean.currentPage-1 }">上一页</a>
				</c:if>	
		        
		        <c:forEach  begin="1" end="${pagebean.totalPage }" var="page">
			        <c:if test="${pagebean.currentPage==page }">
							<span class="current">${page}</span>
					</c:if>
					<c:if test="${pagebean.currentPage!=page }">
					  <a href="backstage?oper=message&currentPage=${page}">${page}</a>
					</c:if>
		        </c:forEach>
		         <!-- 后一页按钮 -->
                    <c:if test="${pagebean.currentPage==pagebean.totalPage }">
                          <a href="javascript:void(0);">下一页</a>
                   </c:if>
                   <c:if test="${pagebean.currentPage!=pagebean.totalPage }">
                    <a href="backstage?oper=message&currentPage=${pagebean.currentPage+1 }">下一页</a>
                    </c:if>
		        <a href="backstage?oper=message&currentPage=${pagebean.totalPage}">尾页</a>
	         </div>
        </td>
      </tr>
    </table>
  </div>
</form>
<script type="text/javascript">

function del(mid){
	if(confirm("您确定要删除吗?")){
		//确认删除
		location.href = "backstage?oper=delmessage&mid="+mid;
	}
}
</script>
</body>
</html>