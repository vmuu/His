<%@page import="entity.Bed_info"%>
<%@page import="entity.Doctor_info"%>
<%@page import="entity.Category"%>
<%@page import="java.util.List"%>
<%@page import="entity.pojo.Patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="./js/layui.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" type="text/css" href="./css/layui.css" />

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>添加医生</title>
	</head>
	<body>
		<%
			List<Doctor_info> DoctorList=(List<Doctor_info>)session.getAttribute("DoctorList");
				     List<Category> categoryList= (List<Category>)session.getAttribute("categoryList");
				     List<Bed_info> selBedList= (List<Bed_info>)session.getAttribute("selBedList");
		%>
		<div style="width: 500;">

			<form class="layui-form" action="UpdPatientServlet">

<input type="text" name="patient_id" style="display: none" value="${param.patient_id }" required  />

				<div class="layui-form-item">
					<label class="layui-form-label">科室：</label>
					<div class="layui-input-block">
					<input type="text" name="patient_subject" disabled="true"  value="${param.category_sort}" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				
						
					</div>
				</div>
				
				
				
				<div class="layui-form-item">
					<label class="layui-form-label">病床号：</label>
					<div class="layui-input-block">
					<input type="text" name="patient_bedno" disabled="true"  value="${ param.bed_no}" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
				
					</div>
				</div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">姓名：</label>
				    <div class="layui-input-block">
				      <input type="text" name="patient_name" value="${param.patient_name }" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
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
				        <input type="text" name="patient_age" value="${param.patient_age }" required  lay-verify="required" placeholder="请输入年龄" autocomplete="off" class="layui-input">
				      </div>
				    </div>
					  <div class="layui-form-item">
					    <label class="layui-form-label">病症：</label>
					    <div class="layui-input-block">
					      <input type="text" name="patient_disease"  value="${param.patient_disease}"  required  lay-verify="required" placeholder="请输入病症" autocomplete="off" class="layui-input">
					    </div>
					  </div>
					  
				<div class="layui-form-item">
					<label class="layui-form-label">医生姓名：</label>
					<div class="layui-input-block">
					<input type="text" name="patient_doctor" disabled="true"  value="${param.doctor_name }" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
					</div>
				</div>
				  <div class="layui-form-item">
				    <label class="layui-form-label">入院时间：</label>
					<div class="form-group layui-input-block ">
						
						<input class="layui-input" type="date" name="admission_date" id="date" value="${param.admission_date }" />
					</div>
				  </div>
				    <div class="layui-form-item">
				    <label class="layui-form-label">出院时间：</label>
				    <div class="layui-input-block">
				    <input class="layui-input" type="date" name="discharge_date" id="date" value="${param.discharge_date }" />
				     
				    </div>
				  </div>

				

				<div class="layui-form-item">
					<div class="layui-input-block">
						<!-- <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button> -->
						<input type="submit" name="" id="" class="layui-btn" value="修改" />
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
				
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
