<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>医行天下医疗管理系统</title>
		<link rel="stylesheet" href="./css/layui.css">
		<link rel="stylesheet" href="./css/main.css">
		<style type="text/css">

		</style>
	</head>
	<body>
		<div class="layui-layout layui-layout-admin">
			<div class="layui-header header">

				<div class="layui-logo header_title"><a href="hello.do">
						<img src="image/yxtxsys_logos.png"></a>
					<div class="">医行天下医疗管理系统</div>
				</div>
				<!-- 头部区域（可配合layui 已有的水平导航） -->

				<ul class="layui-nav layui-layout-right" id="lefNav">
					<img src="image/0.jpg" class="layui-circle" style="border: 2px solid #A9B7B7;" width="35px" alt="">
					<li class="layui-nav-item">
						<a href="javascript:;">
							admin
							<span class="layui-nav-more"></span>
						</a>
						<dl class="layui-nav-child">
							<dd><a href="">个人信息</a></dd>
							<dd><a href="">切换账号</a></dd>
							<dd><a href="">退出</a></dd>
						</dl>
					</li>
					<li href="javascript: history.back(); alert('退出成功！欢迎下次使用！');" class="layui-nav-item"><a href="">注销账户</a></li>
				</ul>
			</div>

			<div class="layui-side layui-bg-black">
				<div class="layui-side-scroll">
					<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
					<ul class="layui-nav layui-nav-tree" lay-filter="test">
						<li class="layui-nav-item layui-this">
							<a class="javascript:;" href="javascript:;" _href="User_management.html">
								<i class="layui-icon" style="top: 3px;"></i> <cite>用户信息管理</cite>
							</a>
						</li>
<!-- 						<li class="layui-nav-item layui-this">
							<a class="javascript:;" href="javascript:;" _href="Role_management.html">
								<i class="layui-icon" style="top: 3px;"></i> <cite>角色信息管理</cite>
							</a>
						</li> -->
						<li class="layui-nav-item layui-nav-itemed">
							<a class="javascript:;" href="javascript:;" _href="main.html">
								<i class="layui-icon layui-icon-menu-fill" style="top: 3px;"></i> <cite>医生信息管理</cite>
								<span class="layui-nav-more"></span></a>
							<dl class="layui-nav-child">
								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="医生信息查询" data-type="tabAdd" class="site-demo-active" data-id="docListServlet" data-url="DoctorInfoMain.do">
										<cite>医生信息查询</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="医生信息添加" data-type="tabAdd" class="site-demo-active" data-id="addDocServlet" data-url="DoctorInfoAddT.do">
										<cite>医生信息添加</cite>
									</a>
								</dd>
								<dd class="">
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a class="javascript:;" href="javascript:;" _href="main.html">
								<i class="layui-icon layui-icon-component" style="top: 3px;"></i> <cite>病床信息管理</cite>
								<span class="layui-nav-more"></span></a>
							<dl class="layui-nav-child">
								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="病床信息查询" data-type="tabAdd" class="site-demo-active" data-id="BedServlet" data-url="BedMain.do">
										<cite>病床信息查询</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="病床信息添加" data-type="tabAdd" class="site-demo-active" data-id="addBed" data-url="addBed.jsp">
										<cite>病床信息添加</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a class="javascript:;" href="javascript:;" _href="main.html">
								<i class="layui-icon layui-icon-fire" style="top: 3px;"></i> <cite>病人信息管理</cite>
								<span class="layui-nav-more"></span></a>
							<dl class="layui-nav-child">
								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="病人信息查询" data-type="tabAdd" class="site-demo-active" data-id="PatientServlet" data-url="PatientMain.do">
										<cite>病人信息查询</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="病人信息添加" data-type="tabAdd" class="site-demo-active" data-id="AddJsp" data-url="addPatient.jsp">
										<cite>病人信息添加</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a class="javascript:;" href="javascript:;" _href="main.html">
								<i class="layui-icon layui-icon-rmb" style="top: 3px;"></i> <cite>收费信息管理</cite>
								<span class="layui-nav-more"></span></a>
							<dl class="layui-nav-child">
								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="收费信息查询" data-type="tabAdd" class="site-demo-active" data-id="ChargeServlet" data-url="ChargeServlet">
										<cite>收费信息查询</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
								<!-- <dd class="">
									<a href="javascript:;" _href="Data_management.html">
										<cite>收费信息添加</cite>
									</a>
								</dd> -->

								<dd class="">
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a class="javascript:;" href="javascript:;" _href="main.html">
								<i class="layui-icon" style="top: 3px;"></i> <cite>统计分析</cite>
								<span class="layui-nav-more"></span></a>
							<dl class="layui-nav-child">
								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="医生会诊统计" data-type="tabAdd" class="site-demo-active" data-id="DocIcon" data-url="DocIcon.do">
										<cite>医生会诊统计</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript:;" data-title="诊所盈利统计" data-type="tabAdd" class="site-demo-active" data-id="ProfitIcon" data-url="ProfitIcon.do">
										<cite>诊所盈利统计</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
							</dl>
						</li>
						<li class="layui-nav-item layui-nav-itemed">
							<a class="javascript:;" href="javascript:;" _href="main.html">
								<i class="layui-icon layui-icon-set-fill" style="top: 3px;"></i> <cite>平台系统管理</cite>
								<span class="layui-nav-more"></span></a>
							<dl class="layui-nav-child">
								<dd class="">
								</dd>
								<dd class="">
									<!-- <a href="javascript:;" _href="Warning_management.html" data-title="修改密码" data-type="tabAdd" class="site-demo-active" data-id="roleInformation" data-url="deom.html">
										<cite>修改密码</cite>
									</a> -->
								</dd>

								<dd class="">
								</dd>
								<dd class="">
									<a href="javascript: history.go(-1);" _href="Login.jsp"> <cite">退出系统</cite>
									</a>
								</dd>

								<dd class="">
								</dd>
							</dl>
						</li>
						<!-- <li class="layui-nav-item"><a href="javascript:;">menu item 123</a></li>
						<li class="layui-nav-item"><a href="">the links</a></li> -->
					</ul>
				</div>
			</div>

			<div class="layui-body">
				<!-- 内容主体区域 -->
				<div class="x-slide_left" style="background-position: 0px 0px;"></div>

				<div class="layui-tab" style="width: 100%;height: 100%" lay-filter="demo" lay-allowClose="true" >
					<ul class="layui-tab-title">
						<li class="layui-this" lay-id="carInformation">欢迎界面</li>
						<!-- <li>用户基本管理</li>
						<li>权限分配</li>
						<li>全部历史文字长一点试试</li>
						<li>订单管理</li> -->
					</ul>
					<div class="layui-tab-content" style="width: 100%;height: 100%">
					    <div class="layui-tab-item layui-show">
					        <iframe src="hello.do" scrolling="no" frameborder="0"  style=" width: 100%;height: 100%" ></iframe>
					    </div>
					</div>
					<!-- <div class="layui-tab-content">
						<div class="layui-tab-item layui-show">1</div>
						<div class="layui-tab-item">2</div>
						<div class="layui-tab-item">3</div>
						<div class="layui-tab-item">4</div>
						<div class="layui-tab-item">5</div>
						<div class="layui-tab-item">6</div>
					</div> -->
				</div>
				<!-- <div style="padding: 15px;">内容主体区域</div> -->
			</div>

			<!-- <div class="layui-footer">
				底部固定区域
				底部固定区域
			</div> -->
		</div>

		<script src="./js/layui.js"></script>
		<script src="js/jquery-3.3.1.js"></script>
		<script>
			//JavaScript代码区域
			layui.use('element', function() {
				var element = layui.element;
				var $ = layui.jquery;
				//触发事件
				var active = {
					//在这里给active绑定几项事件，后面可通过active调用这些事件
					tabAdd: function(url, id, name) {
						//新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
						//关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
						element.tabAdd('demo', {
							title: name,
							content: '<iframe data-frameid="' + id + '" scrolling="no" frameborder="0" src="' + url +
								'" style="width:100%; height:100%;"></iframe>',
							id: id //规定好的id
						})
						element.render('tab');

					},
					tabChange: function(id) {
						//切换到指定Tab项
						element.tabChange('demo', id); //根据传入的id传入到指定的tab项
					},
					tabDelete: function(id) {
						element.tabDelete("demo", id); //删除
					},
					tabDeleteAll: function(ids) { //删除所有
						$.each(ids, function(i, item) {
							element.tabDelete("demo", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
						})
					}
				};


				//当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
				$('.site-demo-active').on('click', function() {
					var dataid = $(this);

					//这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
					if ($(".layui-tab-title li[lay-id]").length <= 0) {
						//如果比零小，则直接打开新的tab项
						active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"),dataid.attr("data-title"));
					} else {
						//否则判断该tab项是否以及存在

						var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
						$.each($(".layui-tab-title li[lay-id]"), function() {
							//如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
							if ($(this).attr("lay-id") == dataid.attr("data-id")) {
								isData = true;
							}
						})
						if (isData == false) {
							//标志为false 新增一个tab项
							active.tabAdd(dataid.attr("data-url"), dataid.attr("data-id"), dataid.attr("data-title"));
						}
					}
					//最后不管是否新增tab，最后都转到要打开的选项页面上
					active.tabChange(dataid.attr("data-id"));
					$(".layui-tab-content>.layui-tab-item").css("height","100%");
				});

			});
		</script>
		<script language="JavaScript">
		    if (window != top) {
		        top.location.href = location.href;
		        
		    }
		    
		</script>
	</body>
</html>
