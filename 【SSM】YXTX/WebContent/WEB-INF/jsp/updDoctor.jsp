<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>医生信息修改</title>
<link rel="stylesheet" type="text/css" href="css/layui.css"/>
</head>
<body>
	<div class="updDoctor">
		<form class="layui-form" action="DoctorInfoUpd.do">
			
			<c:forEach items="${DoctorInfo }" var="DoctorInfo">
			<input type="text" name="doctorId" style="display: none" value="${DoctorInfo.doctorId}" required  />
			
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">医生姓名</label>
		    <div class="layui-input-block">
		      <input type="text" name="doctorName" value="${DoctorInfo.doctorName}" required  lay-verify="required" autocomplete="off" class="layui-input">
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择性别</label>
		    <div class="layui-input-block">
		      <input type="radio" name="doctorSex" value="男" title="男">
		      <input type="radio" name="doctorSex" value="女" title="女" checked>
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择职称</label>
		    <div class="layui-input-block">
		      <select name="doctorTitle" lay-verify="required">
		        <option value="${DoctorInfo.doctorTitle}">${DoctorInfo.doctorTitle}</option>
		        <option value="医师">医师</option>
		        <option value="主任医师">主任医师</option>
		      </select>
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择职务</label>
		    <div class="layui-input-block">
		      <select name="doctorJob" lay-verify="required">
		        <option value="${DoctorInfo.doctorJob}">${DoctorInfo.doctorJob}</option>
		        <option value="科主任">科主任</option>
		        <option value="科员">科员</option>
		      </select>
		    </div>
		  </div>
		
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">选择科别</label>
		    <div class="layui-input-block">
		      <select name="doctorSubject" lay-verify="required">
		      		<option value="">内科</option>
			        <option value="1">内科</option>
			        <option value="2">外科</option>
			        <option value="3">儿科</option>
			        <option value="4">妇科</option>
		      </select>
		    </div>
		  </div>
		 
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">医生生日</label>
		    <div class="layui-input-block">
		      <input type="text" name="doctorBirthday" value="${DoctorInfo.doctorBirthday}" class="layui-input">
		    </div>
		  </div>
		  
		  <div class="layui-form-item" style="width: 600px;">
		    <label class="layui-form-label">就职日期</label>
		    <div class="layui-input-block">
		      <input type="text" name="jobTiem" value="${DoctorInfo.jobTiem}" class="layui-input">
		    </div>
		  </div>
		  
		   <div class="layui-form-item">
		      <div class="layui-input-block">
				 <input type="submit" name="" id="" value="保存" lay-filter="formDemo" class="layui-btn"/>
		        <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		      </div>
		    </div>
		    </c:forEach>
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