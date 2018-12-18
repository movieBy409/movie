<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
	<div class="panel admin-panel">
		<div class="panel-head" id="add">
			<strong><span class="icon-pencil-square-o"></span>添加电影</strong>
		</div>
		<div class="body-content">
			<form method="post" class="form-x" action="backstage?oper=addmovie" enctype="multipart/form-data">
				<div class="form-group">
					<div class="label">
						<label>电影名称：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" value="" name="mname"
							data-validate="required:请输入电影名称" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>电影图片：</label>
					</div>
					<div class="field">
						<input type="file" id="url1" name="mimage" class="input tips" style="width: 25%; float: left;" value="" data-toggle="hover" data-place="right" data-image="" />
					   <!--  <input type="button" class="button bg-blue margin-left" id="image1" value="+ 浏览上传" style="float: left;"> -->
					<div class="tipss">图片尺寸：270*358</div>	
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>导演：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="director" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>主演：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="starring" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>时长：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="mtime" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>地区：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="area" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>语言：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="language" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>票价：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="price" value="" />
						<div class="tips"></div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="label">
						<label>电影类型：</label>
					</div>
					<div class="field">
						<input type="text" class="input w50" name="type" value="" />
						<div class="tips"></div>
					</div>
				</div>
				<!-- 
				<if condition="$iscid eq 1">
				<div class="form-group">
					<div class="label">
						<label>电影类型：</label>
					</div>
					<div class="field">
						<select name="cid" class="input w50">
							<option value="">请选择分类</option>
							<option value="">产品分类</option>
							<option value="">产品分类</option>
							<option value="">产品分类</option>
							<option value="">产品分类</option>
						</select>
						<div class="tips"></div>
					</div>
				</div>
				</if>
				 -->

				<div class="clear"></div>
				<div class="form-group">
					<div class="label">
						<label>上映时间：</label>
					</div>
					<div class="field">
						<script src="js/laydate/laydate.js"></script>
						<input type="text" class="laydate-icon input w50" name="mdate"
							onclick="laydate({istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"
							value="" data-validate="required:日期不能为空"
							style="padding: 10px !important; height: auto !important; border: 1px solid #ddd !important;" />
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label>内容简介：</label>
					</div>
					<div class="field">
						<textarea class="input" name="introduction" style="height: 90px;"></textarea>
						<div class="tips"></div>
					</div>
				</div>
				<div class="form-group">
					<div class="label">
						<label></label>
					</div>
					<div class="field">
						<button class="button bg-main icon-check-square-o" type="submit">添加</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
