<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>病床管理</title>
<script src="./js/layui.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" type="text/css" href="./css/layui.css" />
</head>
<body>

		<form action="" method="">
		<div class="input-user" style=" display: flex;">
			<form action="PatientServlet" method="post">
				<div class="layui-input-item" style="width: 400px">
					<label class="layui-form-label">病人姓名：</label>
					<div class="layui-inline" style="width: 200px">
						<input type="text" name="Bed" lay-verify="required" placeholder="请输入姓名" class="layui-input">
					</div><button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
				</div>
			</form>
			<a class="addCourse" href="addPatient.jsp">
				<button type="button" class="layui-btn">
					<i class="layui-icon">&#xe608;</i> 添加
				</button>
			</a>
		</div>
			<table lay-filter="demo">
				<thead>
					<tr>
						<th lay-data="{field:'bed_id', width:120, sort: true}">病床编号</th>
						<th lay-data="{field:'bed_no', width:120, sort: true}">病床号</th>
						<th lay-data="{field:'bed_price', width:120, sort: true}">价格</th>
						<th lay-data="{field:'bed_state', width:120, sort: true}">使用状况</th>
						<th lay-data="{field:'id', width:120, sort: true}">操作</th>
					</tr>
				</thead>
				
				<c:forEach var="bed" items="${BedInfo }" varStatus="item">
					<tbody>
						<tr>
							<td>${ bed.bedId}</td>
							<td>${ bed.bedNo}</td>
							<td>${ bed.bedPrice}</td>
							<td>
							<c:if test="${ bed.bedState==1}">
								使用中
							</c:if>
							<c:if test="${ bed.bedState==0}">
								未使用
							</c:if>
							</td>
							
							<td>
								<a href="" class="layui-icon">&#xe642;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<a onclick="del(this)" href="BedtDel.do?bedId=${bed.bedId }"
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
						toolbar: 'default' 
							  ,toolbar: true,
					page: true
					//支持所有基础参数
				});
			</script>
		</form>




</body>
</html>