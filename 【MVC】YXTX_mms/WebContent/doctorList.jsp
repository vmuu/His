<%@page import="entity.Doctor_info"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>医生表格</title>
<link rel="stylesheet" type="text/css" href="css/layui.css"/>
</head>
<body>
	<div class="mainList">
		<div class="" style="float: left;">
			<a href="./addDoctor.jsp" class="layui-btn layui-btn-primary layui-border-green" style="margin-left: 20px;">添加</a>
		</div>
		<div style="margin-left: 20px;float: right;overflow：hidden；">
			<form action="docListServlet" method="post">
				<label class="layui-form-label">查询内容：</label>
				<div class="layui-inline" style="width: 200px">
					<input type="text" name="doctor_name" lay-verify="required" placeholder="请输入医生姓名/职称" class="layui-input">
				</div>
				<button type="submit" class="layui-btn" lay-submit lay-filter="formDemo">查询<tton>
			</form>
		</div>
		<!-- 防止上面元素塌陷-->
		<div style="clear: both; height: 0; overflow: hidden;">
		</div>
		
		<!-- 获取数据库的数据 -->
		<%
			List<Doctor_info> docList=(List<Doctor_info>)session.getAttribute("docList");
			session.setAttribute("docList", docList);
		%>
			
		<table lay-filter="demo">
			<thead>
			<tr>
				<th lay-data="{field:'doctor_id', width:100, sort: true}">编号</th>
				<th lay-data="{field:'doctor_name', width:120}">姓名</th>
				<th lay-data="{field:'doctor_sex', width:100, sort: true}">性别</th>
				<th lay-data="{field:'doctor_title', width:190, sort: true}">职称</th>
				<th lay-data="{field:'doctor_job', width:190, sort: true}">职务</th>
				<th lay-data="{field:'doctor_subject', width:190, sort: true}">科别</th>
				<th lay-data="{field:'doctor_birthday', width:220}">生日</th>
				<th lay-data="{field:'job_tiem', width:220, sort: true}">就职日期</th>
				<th lay-data="{field:'doctor_but'}">功能</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="doctor" items="${docList}" varStatus="item">
				<tr>
					<td>${doctor.doctor_id}</td>
					<td>${doctor.doctor_name}</td>
					<td>${doctor.doctor_sex}</td>
					<td>${doctor.doctor_title}</td>
					<td>${doctor.doctor_job}</td>
					<td>${doctor.doctor_subject}</td>
					<td>${doctor.doctor_birthday}</td>
					<td>${doctor.job_tiem}</td>
					<td>
						<a class="layui-btn layui-btn-primary layui-border-black">修改</a>
						<a href="delDocServlet?doctor_id=${doctor.doctor_id}" class="layui-btn layui-btn-danger">删除</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>	
		
		<script src="js/layui.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var table = layui.table;
			 
			//转换静态表格
			table.init('demo', {
			  height: 530 //设置高度
			  ,limit: 10 //注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致
			  ,page:true
			  ,size:'lg'
			  //支持所有基础参数
			}); 
			
		</script>
	</div>
</body>
</html>