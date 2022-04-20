<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<link rel="stylesheet" href="./css/layui.css">
<style type="text/css">
	   body{
	   	 background-image: url(image/登录界面背景.png);
	   }
       .login_formlist{
         width:400px;
         height:300px;
         border:1px solid transparent;
         background-color: white;
         opacity: 0.7;
         margin-top: 200px;
         margin-left: 900px;
         border-radius: 3%;
       }
       .layui-form{
       	margin-top: 40px;
       	margin-left: -22px;
       }
       .layui-form-item3{
       	margin-bottom: 10px;
       }
       .layui-form-item1{
       	margin-bottom: 20px;
       }
       .layui-form-item2{
       	margin-bottom: 20px;
       }
       .layui-form-item4{
       	margin-top: 20px;
       	margin-left: 24px;
       }
       #center{
        width: 80%;
        margin-left: 5%;
       }
       .label-jzmm{
       	float: right;
    	margin-right: 119px;
    	margin-top: 9px;
       }
</style>
</head>
<body>
<div class="login_formlist">
	<div id="center">
		<form class="layui-form" action="MianT.do" method="post">
		  <div class="layui-form-item1">
		    <label class="layui-form-label"><b>账号</b></label>
		    <div class="layui-input-block">
		      <input type="text" style="border: 1px solid black;" name="account" lay-verify="title" required="required" autocomplete="off" placeholder="请输入账号" class="layui-input" id="account">
		    </div>
		  </div>
		  <div class="layui-form-item2">
		    <label class="layui-form-label"><b>密码</b></label>
		    <div class="layui-input-block">
		      <input type="password" name="password" style="border: 1px solid black;  lay-verify="title" required="required" autocomplete="off" placeholder="请输入密码" class="layui-input" id="password">
		    </div>
		  </div>
		  <div class="layui-form-item3">
	   		 <div class="layui-input-block">
	      	  <input type="checkbox" name="close" lay-skin="switch" lay-text="是|否">
	      	  <div class="label-jzmm"><b>记住密码</b></div>
	         </div> 
	      </div>
		  <div class="layui-form-item4">
		    <div class="layui-input-block">
		      <button type="submit" class="layui-btn" lay-submit="" lay-filter="demo1">登录</button>
		      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		  </div>
		</form>	
	</div>
</div>
<script type="text/javascript" src="./js/layui.js"></script>
<script type="text/javascript">
 form.on('switch(switchTest)', function(data){
    layer.msg('开关checked：'+ (this.checked ? 'true' : 'false'), {
      offset: '6px'
    });
    layer.tips('温馨提示：请注意开关状态的文字可以随意定义，而不仅仅是ON|OFF', data.othis)
  });
 </script>
<!--  <script type="text/javascript">
    	$(function(){
    		$("form").submit(function(){
    			var account = $("#account").val();
    			var password = $("#password").val();
    			var accountFlag = false;
    			var passwordFlag = false;
    			if(account == ""|| account==null){
    			alert("用户名不能为空");
    				accountFlag = false;
    			}else{
    				accountFlag = true;
    			}
    			if(password == ""|| password==null){
    			alert("密码不能为空");
    				passwordFlag = false;
    			}else{
    				passwordFlag = true;
    			}
    			if(accountFlag && passwordFlag){
    				return true;
    			}else{
    				return false;
    			}
    		});
    	});
    </script> -->
</body>
</html>