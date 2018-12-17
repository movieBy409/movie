<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<form method="post" action="" id="listform">
  <div class="panel admin-panel">
    <div class="panel-head"><strong class="icon-reorder"> 内容列表</strong> <a href="" style="float:right; display:none;">添加字段</a></div>
    <div class="padding border-bottom">
      <ul class="search" style="padding-left:10px;">
        <li> <a class="button border-main icon-plus-square-o" href="add.jsp"> 添加内容</a> </li>
        <li>搜索：</li>
        <li>
          <input type="text" value="${key }" placeholder="请输入搜索关键字" id="searchkey" name="key" class="input" style="width:250px; line-height:17px;display:inline-block" />
          <a href="javascript:void(0)" class="button border-main icon-search" onclick="changesearch()" > 搜索</a></li>
      </ul>
    </div>
    <table  style="font-size: 18px ;" class="table table-hover text-center">
      <tr>
        <th width="100" style="text-align:left; padding-left:20px;">ID</th>
        <th width="5%">名字</th>
        <th>图片</th>
        <th>简介</th>
        <th >属性</th>
        <th >分类名称</th>
        <th width="10%">更新时间</th>
        <th width="310">操作</th>
      </tr>
      <volist name="list" id="vo">
      
     <c:forEach items="${page.movietList}" var="movie">
     
		       <tr id="${movie.mid }">
		          <td style="text-align:left; padding-left:20px;">
		          <%-- <input type="checkbox" name="mid" value="${movie.mid }" /> --%>
		           ${movie.mid }</td>
		          <td><input type="text" name="mname" value="${movie.mname }" style="width:120px; text-align:center; border:1px solid #ddd; padding:7px 0;" /></td>
		          <td width="10%"><img src="${movie.mimage }" alt="" width="90" height="90px" /></td>
		          <td>${movie.introduction }</td>
		          <td><font color="#00CC99">正在热播</font></td>
		          <td >${movie.type }</td>
		          <td>${movie.mdate }</td>
		          <td><div class="button-group">  <a class="button border-red" href="javascript:void(0)" onclick="return del('${movie.mid}')"><span class="icon-trash-o"></span> 删除</a> </div></td>
		        </tr>
		        
     </c:forEach>
		       <tr>
		        <td colspan="8">
		        <div class="pagelist">
		        
		        <c:choose>
		             <c:when test="${ currentPage==1 }">
		                    <span onclick="tishi1()">上一页</span>
		             </c:when>
		             <c:otherwise>
		             
		                  <c:if test="${movielist == 'movielist' }">
		                        <a href="backstage?oper=movielist&currentPage=${currentPage-1}">上一页</a> 
		                  </c:if>
		                  
		                  <c:if test="${search == 'search' }">
		                        <a href="backstage?oper=search&currentPage=${currentPage-1}&key=${key}">上一页</a> 
		                  </c:if>
		                  
		             </c:otherwise>
		        
		        </c:choose>
		         
		         <c:forEach begin="1" end="${page.totalPage }" step="1" varStatus="t">
		         
		             <c:choose>
		                  <c:when test="${currentPage ==t.index }">
		                  		  <span class="current"> ${t.index }</span>
		                  </c:when>
		                  
		                  <c:otherwise>
		                  
		                         <c:if test="${movielist == 'movielist' }">
		                       		  <a class="current" href="backstage?oper=movielist&currentPage=${t.index }">${t.index }</a>
		                 		 </c:if>
		                  
				                  <c:if test="${search == 'search' }">
				                        <a class="current" href="backstage?oper=search&currentPage=${t.index }&key=${key}">${t.index }</a>
				                  </c:if>
		                 
						  </c:otherwise>
		             </c:choose>
		         
		         </c:forEach>
		         
		         <c:choose>
		             <c:when test="${ currentPage==page.totalPage }">
		                    <span onclick="tishi2()">下一页</span>
		             </c:when>
		             <c:otherwise>
		             
		                  <c:if test="${movielist == 'movielist' }">
		                        <a href="backstage?oper=movielist&currentPage=${currentPage+1}">上一页</a> 
		                  </c:if>
		                  
		                  <c:if test="${search == 'search' }">
		                        <a href="backstage?oper=search&currentPage=${currentPage+1}&key=${key}">上一页</a> 
		                  </c:if>
		                  
		             </c:otherwise>
		        
		        </c:choose>
		         
		         <c:if test="${movielist == 'movielist' }">
                       <a href="backstage?oper=movielist&currentPage=${page.totalPage}">尾页</a> 
                 </c:if>
                 
                 <c:if test="${search == 'search' }">
                       <a href="backstage?oper=search&currentPage=${page.totalPage}&key=${key}">尾页</a> 
                 </c:if>
        
		         </div>
		         </td>
		      </tr>
      
    </table>
  </div>
</form>
<script type="text/javascript">

  function tishi1(){
	  alert("已经是首页了");
  }
  
  function tishi2(){
	  alert("已经是尾页了")
  }

//搜索
function changesearch(){	
	var key=$("#searchkey").val();
	window.location.href="backstage?oper=search&key="+key;
}

//单个删除
function del(mid){
	if(confirm("您确定要删除吗?")){
    	
		   $.ajax({
            type: "POST",
            url: "backstage?oper=del",
            data:"mid="+mid,
            cache: false, //不缓存此页面
            success: function (data) {
                if(data=="0"){
                	alert("系统繁忙");
                }else {
                	window.location.href="backstage?oper=movielist";
                }
            }
        });
	}
}

//全选
$("#checkall").click(function(){ 
  $("input[name='id[]']").each(function(){
	  if (this.checked) {
		  this.checked = false;
	  }
	  else {
		  this.checked = true;
	  }
  });
})

//批量删除
function DelSelect(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		var t=confirm("您确认要删除选中的内容吗？");
		if (t==false) return false;		
		$("#listform").submit();		
	}
	else{
		alert("请选择您要删除的内容!");
		return false;
	}
}

//批量排序
function sorts(){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		return false;
	}
}


//批量首页显示
function changeishome(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}

//批量推荐
function changeisvouch(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){
		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");	
		
		return false;
	}
}

//批量置顶
function changeistop(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();	
	}
	else{
		alert("请选择要操作的内容!");		
	
		return false;
	}
}


//批量移动
function changecate(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){		
		
		$("#listform").submit();		
	}
	else{
		alert("请选择要操作的内容!");
		
		return false;
	}
}

//批量复制
function changecopy(o){
	var Checkbox=false;
	 $("input[name='id[]']").each(function(){
	  if (this.checked==true) {		
		Checkbox=true;	
	  }
	});
	if (Checkbox){	
		var i = 0;
	    $("input[name='id[]']").each(function(){
	  		if (this.checked==true) {
				i++;
			}		
	    });
		if(i>1){ 
	    	alert("只能选择一条信息!");
			$(o).find("option:first").prop("selected","selected");
		}else{
		
			$("#listform").submit();		
		}	
	}
	else{
		alert("请选择要复制的内容!");
		$(o).find("option:first").prop("selected","selected");
		return false;
	}
}

</script>
</body>
</html>