<%@page import="java.util.List"%>
<%@page import="entity.pojo.Patient"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="./js/layui.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="./css/layui.css" />
		<title>病人管理页面</title>
	</head>
	<body>

		<form action="" method="">
			<div class="input-user" style=" display: flex;">
				<form action="PatientServlet" method="post">
					<div class="layui-input-item" style="width: 400px">
						<label class="layui-form-label">病人姓名：</label>
						<div class="layui-inline" style="width: 200px">
							<input type="text" name="Patient" lay-verify="required" placeholder="请输入姓名" class="layui-input">
						</div><button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
					</div>
				</form>
				<a class="addCourse" href="AddJsp">
					<button type="button" class="layui-btn">
						<i class="layui-icon">&#xe608;</i> 添加
					</button>
				</a>
			</div>
			<table lay-filter="demo">
				<thead>
					<tr>
						<th lay-data="{field:'category_sort', width:150, sort: true}">科别</th>
						<th lay-data="{field:'bed_no', width:150, sort: true}">病床号</th>
						<th lay-data="{field:'patient_name', width:150, sort: true}">病人姓名</th>
						<th lay-data="{field:'patient_sex', width:150, sort: true}">病人性别</th>
						<th lay-data="{field:'patient_age', width:150, sort: true}">病人年龄</th>
						<th lay-data="{field:'patient_disease', width:200, sort: true}">病症</th>
						<th lay-data="{field:'doctor_name', width:150, sort: true}">主治医生</th>
						<th lay-data="{field:'admission_date', width:200, sort: true}">入院时间</th>
						<th lay-data="{field:'discharge_date', width:200, sort: true}">出院时间</th>
						<th lay-data="{field:'id', width:120, sort: true}">操作</th>
					</tr>
				</thead>
				<%
				List<Patient> PatientList = (List<Patient>) session.getAttribute("PatientList");

			%>
				<c:forEach var="Patient" items="${PatientList }" varStatus="item">
					<tbody>
						<tr>
							<td>${Patient.category_sort }</td>
							<td>${ Patient.bed_no}</td>
							<td>${Patient.patient_name }</td>
							<td>${Patient.patient_sex }</td>
							<td>${Patient.patient_age }</td>
							<td>${Patient.patient_disease }</td>
							<td>${ Patient.doctor_name}</td>
							<td>${Patient.admission_date }</td>
							<td>${Patient.discharge_date }</td>
							<td>
								<a href="UpdJsp?patient_id=${Patient.patient_id } &category_sort=${Patient.category_sort }&bed_no=${ Patient.bed_no}
								&patient_name=${Patient.patient_name }&patient_sex=${Patient.patient_sex }&patient_age=${Patient.patient_age }
								&patient_disease=${Patient.patient_disease }&doctor_name=${ Patient.doctor_name}&admission_date=${Patient.admission_date }
								&discharge_date=${Patient.discharge_date }
								" class="layui-icon">&#xe642;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a onclick="del(this)" href="DelPatientServlet?patient_id=${Patient.patient_id }&bed_no=${ Patient.bed_no}"
									class="layui-icon">&#xe640;</a>
							</td>

							<td>
				</c:forEach>
				</tbody>
			</table>
			<script src="js/layui.all.js" type="text/javascript" charset="utf-8"></script>
			<script src="js/jquery-1.9.1.min.js" type="text/javascript" charset="utf-8"></script>
			<script type="text/javascript">
				function del(obj) {
						$(obj).parent().parent().parent().remove();
				}
				
			</script>


			<script type="text/javascript">
				var table = layui.table;

				//转换静态表格
				table.init('demo', {
					height: 500 //设置高度
						,
					limit: 10 //注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
						,
					page: true
					//支持所有基础参数
				});
			</script>
		</form>

	</body>
</html>
