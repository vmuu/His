<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="./js/layui.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="./css/layui.css" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>病人信息修改</title>
	</head>
	<body>
	
		<div style="width: 500;">

			<form class="layui-form" action="PatientUpd.do">
		<c:forEach items="${selectByPrimaryKey }" var="selectByPrimaryKey">
		<input type="text" name="patientId" style="display: none" value="${selectByPrimaryKey.patientId }" required  />
		<input type="text" name="patientSubject" style="display: none" value="${selectByPrimaryKey.patientSubject }" required  />

				
				<div class="layui-form-item">
					<label class="layui-form-label">病床号：</label>
					<div class="layui-input-block">
					<input type="text" name="patientBedno" disabled="true"  value="${ selectByPrimaryKey.patientBedno}" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				
					</div>
				</div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">姓名：</label>
				    <div class="layui-input-block">
				      <input type="text" name="patientName" value="${selectByPrimaryKey.patientName }" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				    </div>
				  </div>
				  
				  <div class="layui-form-item">
				  	<label class="layui-form-label">性别：</label>
				  	<div class="layui-input-block">    
				  		<input type="radio" name="patient_sex" value="男" title="男">
				  		<input type="radio" name="patient_sex" value="女" title="女" checked>
				  	</div>
				  </div>
				  
				  
				    <div class="layui-form-item">
				      <label class="layui-form-label">年龄：</label>
				      <div class="layui-input-block">
				        <input type="text" name="patientAge" value="${selectByPrimaryKey.patientAge }" required  lay-verify="required" placeholder="请输入年龄" autocomplete="off" class="layui-input">
				      </div>
				    </div>
					  <div class="layui-form-item">
					    <label class="layui-form-label">病症：</label>
					    <div class="layui-input-block">
					      <input type="text" name="patientDisease"  value="${selectByPrimaryKey.patientDisease}"  required  lay-verify="required" placeholder="请输入病症" autocomplete="off" class="layui-input">
					    </div>
					  </div>
					  
				<div class="layui-form-item">
					<label class="layui-form-label">医生姓名：</label>
					<div class="layui-input-block">
					<input type="text" name="patientDoctor" disabled="true"  value="${selectByPrimaryKey.patientDoctor }" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
					</div>
				</div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">入院时间：</label>
					<div class="form-group layui-input-block ">
						<input class="layui-input" type="date" name="admissionDate" id="date" value="${selectByPrimaryKey.admissionDate }" />
					</div>
				  </div>
				    <div class="layui-form-item">
				    <label class="layui-form-label">出院时间：</label>
				    <div class="layui-input-block">
				    <input class="layui-input" type="date" name="dischargeDate" id="date" value="${selectByPrimaryKey.dischargeDate }" />
				     
				    </div>
				  </div>

				

				<div class="layui-form-item">
					<div class="layui-input-block">
						<!-- <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button> -->
						<input type="submit" name="" id="" class="layui-btn" value="修改" />
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
				</c:forEach>
			 </form>
			<script src="./js/layui.js" type="text/javascript" charset="utf-8"></script>
			<script>
				//Demo
				layui.use('form', function() {
					var form = layui.form;

					//监听提交
					form.on('submit(formDemo)', function(data) {
						layer.msg(JSON.stringify(data.field));
						return false;
					});
				});
			</script>


		</div>
	</body>
</html>
