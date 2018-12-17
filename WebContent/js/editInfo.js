$(function() {

	changeSex();

	showUploadPic();
	updateHead();
	updateInfo();
	
	//改变性别
	function changeSex() {
		var sex = $("#sex").val();
		if (sex == "男") {
			$(".mysex>label").eq(0).addClass("changeSex");
		} else if (sex == "女") {
			$(".mysex>label").eq(1).addClass("changeSex");
		} else {
			$(".mysex>label").eq(2).addClass("changeSex");
		}
		$(".mysex>label").on("click", function() {
			$(this).addClass("changeSex");
			$(".mysex>label").not($(this)).removeClass("changeSex");
			$("#sex").val($(this).html());
		});
	}
	
	//展示上传头像
	function showUploadPic() {
		function ProcessPic(e) {
			var file = document.getElementById('pic').files[0];
			if (file) {
				var reader = new FileReader();
				reader.onload = function(event) {
					var txt = event.target.result;
					// 判断上传图片的类型
					var type = getType($("#pic").val());
					if (type == ".PNG" || type == ".jpg" || type == ".png" || type == ".JPG") {
						$(".headpic").attr("src", txt);
						$(".btn-confirm").prop("disabled",false);
						$(".btn-confirm").css({
							backgroundColor : "rgb(0,161,214)",
							color : "white",
							cursor: "pointer"
						});
					}
				}
				reader.readAsDataURL(file);
			}
		}

		function contentLoadedP() {
			document.getElementById('pic').addEventListener('change',
				ProcessPic, false);
		}

		window.addEventListener("DOMContentLoaded", contentLoadedP, false);
	}
	// 得到文件类型
	function getType(path) {
		return path.substring(path.lastIndexOf("."));
	}
	//更新头像
	function updateHead(){
		$(".btn-confirm").on("click",function(){
			var formData = new FormData();
			formData.append('pic', $('#pic')[0].files[0]);  //文件
			$.ajax({
		        url: 'user?oper=updateHead&uid='+$("#uid").val(),
		        type: 'POST',
		        cache: false,
		        data: formData,
		        processData: false,
		        contentType: false,
		        success : function(data){
		        	alert(data);
		        	location.reload();
		        }
			});
		});
	}
	
	//保存
	function updateInfo(){
		$(".el-button").on("click", function() {
			//获取值
			var uname = $("#username").val().trim();
			
			var sex = $("#sex").val().trim();
			
			var tel = $("#tel").val().trim();
			
			var addr = $("#addr").val().trim();
			
			var sign = $("#motto").val().trim();
			
			var birthday = $("#date").val();
			
				$.ajax({
					url : "user?oper=updateInfo&uid="+$("#uid").val(),
					
					type : "post",
					
					data :"uname="+uname+"&sex="+sex+"&tel="+tel+"&addr="+addr+"&sign="+sign+"&birthday="+birthday,
					
					success : function(data){
						
						alert(data);
						location.reload();
						
					}
				});
		});
	}
});
