$(function() {
	changePic();
	setDefaultPic();
	showComment();
	comment();
	report();
	favorite();
	user_reply();
	
	
	// 设置商品默认图片
	function setDefaultPic() {
		var path = $(".goods-photo-other>ul>li>img").eq(0).attr("src");
		
		$(".goods-photo-main").css({
			background: "url(" + path + ") no-repeat",
			backgroundSize: "100% 100%"
		});
		
	}
	// 改变商品图片
	function changePic() {
		$(".goods-photo-other>ul>li>img").mouseenter(function() {
			var path = $(this).attr("src");
			$(".goods-photo-main").css({
				background: "url(" + path + ") no-repeat",
				backgroundSize: "100% 100%"
			});
			$(this).parent().css({
				border: "2px solid black"
			});
			$(".goods-photo-other>ul>li>img").not($(this)).parent().css({
				border: "none"
			});
		});
	}

	//展现和隐藏评论区
	function showComment() {
		var count = 0;
		$(".msg-write").on("click", function() {
			if(count == 0){
				$(".comment").stop().slideDown(600);
				count = 1;
			}else{
				$(".comment").stop().slideUp(600);
				count = 0;
			}
		});
		
	}

	//监听评论区
	function comment() {
		$("body").delegate(".comment-text", "propertychange input", function() {
			//判断是否输入了内容
			var wordCount = $(this).val().length
			$(".comment-operation>span").html(1000 - wordCount);
			if ($(this).val().length > 0) {
				$(".send").prop("disabled", false);
			} else {
				$(".send").prop("disabled", true);
			}
		});

		//监听发布按钮
		$(".send").click(function() {
			//拿到用户输入的内容
			var text = $(".comment-text").val();
			//根据内容创建节点
			
			var uname=$("#uname").val();
			var uimage=$("#uimage").val();
			var uid=$("#uid").val();
			var mid=$("#mid").val();
			console.log(uname  +"  "+ uimage+ " "+ uid+"  "+mid);
			
			if(uid==''||uid==null ){
				alert('请登录再进行留言');
				return;
			}
			var flag='';
			//ajax 调用     开始留言功能  返回一个信息    留言成功 开始展示已下功能     
				var ajax=null;
				 if(window.XMLHttpRequest){
					 ajax=new XMLHttpRequest();
				 }else if(window.ActiveXObject){
					 ajax=new ActiveXObject("Msxml2.XMLHTTP");
				 }
				 //2,复写
				 ajax.onreadystatechange=function(){
					 if(ajax.readyState==4){
						 flag=ajax.responseText;
						 
						 if(flag==''||flag=='null'){
							 alert("系统繁忙,请稍后再试");
							 return ;
						 }else{
							 var point = createEle(text,uname,uimage);
							 $("#mnumber").html(parseInt($("#mnumber").html()) + 1);
								//插入微博
								$(".message>ul").prepend(point);
								//清空输入框
								$(".comment-text").val("");
								//将输入的字数回到初始状态
								$(".comment-operation>span").html(1000);
								// 将输入框隐藏
								$(".comment").css({
									display : "none"
								});
						 }
					 }
				 }
				 ajax.open("post","board",true);// 向 AjaxResult01发出40.请求
				 ajax.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
				 ajax.send("oper=board&"+"uid="+uid+"&msg="+text+"&mid="+mid);
		});
		//创建节点的方法
		function createEle(text,uname,uimage) {
			var point = $("<li>" +
				"<div class=\"user-head\">" +
				"<img src="+uimage+" />" +
				"</div>" +
				"<div class=\"user-name\">uname</div>" +
				"<div class=\"user-reply\">回复</div>"+
				"<div class=\"user-msg\">" + text + "</div>" +
				"<div class=\"user-time\">" + getData() + "</div>" +
				"</li>");
			return point;
		}
		//生成日期
		function getData() {
			var date = new Date();
			var arr = [date.getFullYear() + "/",
				date.getMonth() + 1 + "/",
				date.getDate() + " ",
				date.getHours() + ":",
				date.getMinutes() + ":",
				date.getSeconds()
			];
			arr = arr.join("");
			return arr;
		}
	}
	
	//展示和关闭举报页面
	function report(){
		$(".download_report").on("click",function(){
			$(".report").css({
				display : "block"
			});
			$(".hide").css({
				display : "block"
			});
		});
		$(".report-close").on("click",function(){
			$(".report").css({
				display : "none"
			});
			$(".hide").css({
				display : "none"
			});
		});
		$(".report-cancel").on("click",function(){
			$(".report").css({
				display : "none"
			});
			$(".hide").css({
				display : "none"
			});
		});
		
		//对举报信息的监控
		$(".report-sub").on("click",function(){
			var errorMsg1 = $(".texta").val().length;
			var errorMsg2 = $(".form-control").val();
			if(errorMsg2 == "请选择类型"){
				$(".report-tip2").html("请选择类型！");
			}else if(errorMsg1 <= 0){
				$(".report-tip2").html("描述不能为空");
			}else{
				// 向服务器发送请求
				$(".report-tip2").html("提交成功");
				//清空数据
				$(".texta").val("");
				$(".form-control>option").eq(0).prop("selected", true);
			}
		});
	}
	
	// 收藏
	function favorite(){
		// 控制收藏是否可以点击
		var isClick = true;
		
		$(".favorite").on("click",function(){
			if(isClick){
				$(".favorite-icon>img").attr("src","img/收藏(2).png");
				$(".favorite-success").css({
					display : "block"
				});
				$(".hide").css({
					display : "block"
				});
			}
			if($(".favorite-icon>img").attr("src") == "img/收藏(2).png"){
				isClick = false;
			}
		});
		
		$(".favorite-close").on("click",function(){
			$(".favorite-success").css({
				display : "none"
			});
			$(".hide").css({
				display : "none"
			});
		});
	}
	
	// 用户回复
	function user_reply(){
		$("body").delegate(".message>ul>li", "mouseover", function() {
				$(this).children(".user-reply").css({
					display : "block"
				});
		});
		$("body").delegate(".message>ul>li", "mouseout", function() {
				$(".user-reply").css({
					display : "none"
				});
		});
		
	}
});
