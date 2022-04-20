<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>收费信息</title>
<link rel="stylesheet" type="text/css" href="css/layui.css"/>
<script type="text/css">
.layui-table th {
    padding: 9px 15px;
    min-height: 20px;
    line-height: 20px;
    border: 1px solid #94bdd9;
    font-size: 14px;
}
</script>
</head>
<body>
	<div class="mainList">
		<!-- <div class="" style="float: left;">
			<a href="./addDoctor.jsp" class="layui-btn layui-btn-primary layui-border-green">添加</a>
		</div> -->
		<div style="margin-left: 20px;float: right;overflow：hidden；">
			<form action="ChargeServlet" method="post">
				<label class="layui-form-label">查询：</label>
				<div class="layui-inline" style="width: 200px">
					<input type="text" name="name" lay-verify="required" placeholder="请输入病人姓名" class="layui-input">
				</div>
				<button type="submit" class="layui-btn" lay-submit lay-filter="formDemo">查询<tton>
			</form>
		</div>
		<!-- 防止上面元素塌陷-->
		<div style="clear: both; height: 0; overflow: hidden;">
		</div>
		
		<!-- 获取数据库的数据 -->
		
			
		<table lay-filter="demo">
			<thead>
			<tr>
				<th lay-data="{field:'id', width:160, sort: true}">编号</th>
				<th lay-data="{field:'category_sort', width:180}">科别</th>
				<th lay-data="{field:'patient_bedno', width:160, sort: true}">病床</th>
				<th lay-data="{field:'patient_name', width:180, sort: true}">病人姓名</th>
				<th lay-data="{field:'toll_project', width:240, sort: true}">收费项目</th>
				<th lay-data="{field:'price', width:180, sort: true}">单价</th>
				<th lay-data="{field:'sum_price', width:240}">总价</th>
				<th lay-data="{field:'toll_time', width:240, sort: true}">收费日期</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach var="list" items="${chargeList}" varStatus="item">
				<tr>
					<td>${item.index +1}</td>
					<td>${list.category_sort}</td>
					<td>${list.patient_bedno}</td>
					<td>${list.patient_name}</td>
					<td>${list.toll_project}</td>
					<td>${list.price}</td>
					<td>${list.sum_price}</td>
					<td>${list.toll_time}</td>
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