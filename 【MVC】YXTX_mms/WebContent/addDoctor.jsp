<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.util.List"%>
<%@page import="entity.Category"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>添加医生界面</title>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet" type="text/css" href="./css/layui.css"/>
</head>
<body>
	<div class="addDoctor">
		<form class="layui-form" action="addDocServlet">
			
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">医生姓名</label>
		    <div class="layui-input-block">
		      <input type="text" name="doctor_name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择性别</label>
		    <div class="layui-input-block">
		      <input type="radio" name="doctor_sex" value="男" title="男">
		      <input type="radio" name="doctor_sex" value="女" title="女" checked>
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择职称</label>
		    <div class="layui-input-block">
		      <select name="doctor_title" lay-verify="required">
		        <option value=""></option>
		        <option value="医师">医师</option>
		        <option value="主任医师">主任医师</option>
		      </select>
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择职务</label>
		    <div class="layui-input-block">
		      <select name="doctor_job" lay-verify="required">
		        <option value=""></option>
		        <option value="科主任">科主任</option>
		        <option value="科员">科员</option>
		      </select>
		    </div>
		  </div>
		  
		  <%
		 	List<Category> catList=(List<Category>)session.getAttribute("categoryList");
			session.setAttribute("catList", catList);
		  %>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择科别</label>
		    <div class="layui-input-block">
		      <select name="doctor_subject" lay-verify="required">
		      		<option value=""></option>
		      	<c:forEach var="cat" items="${catList}" varStatus="item">
			        <option value="${cat.category_id }">${cat.category_sort }</option>
			    </c:forEach>
		      </select>
		    </div>
		  </div>
		 
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">医生生日</label>
		    <div class="layui-input-block">
		      <input type="date" name="doctor_birthday" required  lay-verify="required" placeholder="2XXX-XX-XX" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">就职日期</label>
		    <div class="layui-input-block">
		      <input type="date" name="job_tiem" required  lay-verify="required" placeholder="2XXX-XX-XX" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  
		   <div class="layui-form-item">
		      <div class="layui-input-block">
				 <input type="submit" name="" id="" value="保存" lay-filter="formDemo" class="layui-btn"/>
		        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		      </div>
		    </div>
		</form>
		 
		 <script src="./js/layui.js" type="text/javascript" charset="utf-8"></script>
		<script>
		//Demo
		layui.use('form', function(){
		  var form = layui.form;
		  
		  //监听提交
		  form.on('submit(formDemo)', function(data){
		    layer.msg(JSON.stringify(data.field));
		    return false;
		  });
		});
		</script>
	</div>
</body>
</html>