<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>登录</title>
<link rel="stylesheet" href="./layui/css/layui.css">
<style type="text/css">
.calendar{
    width:450px;
    height:350px;
    background:#fff;
    box-shadow:0px 1px 1px rgba(0,0,0,0.1);
}
.body-list ul{
    width:100%;
    font-family:arial;
    font-weight:bold;
    font-size:14px;
}
.body-list ul li{
    width:14.28%;
    height:36px;
    line-height:36px;
    list-style-type:none;
    display:block;
    box-sizing:border-box;
    float:left;
    text-align:center;
}
.lightgrey{
    color:#a8a8a8; /*浅灰色*/
}
.darkgrey{
    color:#565656; /*深灰色*/
}
.green{
    color:#6ac13c; /*绿色*/
}
.greenbox{
    border:1px solid #6ac13c;
    background:#e9f8df; /*浅绿色背景*/
}
.hy1{
width:400px;
}
.hy2{
width:390px;
}
.hy3{
width:360px;
}
body{
background-image: url(image/hyjm.png);
background-repeat: no-repeat;
background-size: 100%;
}
</style>
</head>

<body>
	<div>
		<div class="hy1">
            <h1>医行天下医疗管理系统</h1>
		    <h2>欢迎进入系统</h2>
	    </div>	
	    <div class="hy2">
		    <hr class="layui-border-green">
	    </div>
	    <div class="hy3">
	    	<div class="title">
			    <h1 class="green" id="calendar-title">月份</h1>
			    <h2 class="green small" id="calendar-year">年份</h2>
			    <a href="" id="prev">上个月</a>
			    <a href="" id="next">下个月</a>
			 </div>
			 <div class="body">
			    <div class="lightgrey body-list">
			      <ul>
			        <li>星期一</li>
			        <li>星期二</li>
			        <li>星期三</li>
			        <li>星期四</li>
			        <li>星期五</li>
			        <li>星期六</li>
			        <li>星期天</li>
			      </ul>
			    </div>
			    <div class="darkgrey body-list">
			      <ul id="days">
			      </ul>
   				</div>
 			 </div>
	    </div>
	</div>
	<script type="text/javascript">
		var month_olympic = [31,29,31,30,31,30,31,31,30,31,30,31];
        var month_normal = [31,28,31,30,31,30,31,31,30,31,30,31];
        var month_name = ["一月","二月","三月","四月","五月","六月","七月","八月","九月","十月","十一月","十二月"];
        var holder = document.getElementById("days");
		var prev = document.getElementById("prev");
		var next = document.getElementById("next");
		var ctitle = document.getElementById("calendar-title");
		var cyear = document.getElementById("calendar-year");
		var my_date = new Date();
		var my_year = my_date.getFullYear();
		var my_month = my_date.getMonth();
		var my_day = my_date.getDate();
		
		//获取某年某月第一天是星期几
		function dayStart(month, year) {
		    var tmpDate = new Date(year, month, 1);
		    return (tmpDate.getDay());
		}
		
		//计算某年是不是闰年，通过求年份除以4的余数即可
		function daysMonth(month, year) {
		    var tmp = year % 4;
		    if (tmp == 0) {
		        return (month_olympic[month]);
		    } else {
		        return (month_normal[month]);
		    }
		}
		function refreshDate(){
		    var str = "";
		    var totalDay = daysMonth(my_month, my_year); //获取该月总天数
		    var firstDay = dayStart(my_month, my_year); //获取该月第一天是星期几
		    var myclass;
		    for(var i=1; i<firstDay; i++){ 
		        str += "<li></li>"; //为起始日之前的日期创建空白节点
		    }
		    for(var i=1; i<=totalDay; i++){
		        if((i<my_day && my_year==my_date.getFullYear() && my_month==my_date.getMonth()) || my_year<my_date.getFullYear() || ( my_year==my_date.getFullYear() && my_month<my_date.getMonth())){ 
		            myclass = " class='lightgrey'"; //当该日期在今天之前时，以浅灰色字体显示
		        }else if (i==my_day && my_year==my_date.getFullYear() && my_month==my_date.getMonth()){
		            myclass = " class='green greenbox'"; //当天日期以绿色背景突出显示
		        }else{
		            myclass = " class='darkgrey'"; //当该日期在今天之后时，以深灰字体显示
		        }
		        str += "<li"+myclass+">"+i+"</li>"; //创建日期节点
		    }
		    holder.innerHTML = str; //设置日期显示
		    ctitle.innerHTML = month_name[my_month]; //设置英文月份显示
		    cyear.innerHTML = my_year; //设置年份显示
		}
		refreshDate(); //执行该函数
		prev.onclick = function(e){
		    e.preventDefault();
		    my_month--;
		    if(my_month<0){
		        my_year--;
		        my_month = 11;
		    }
		    refreshDate();
		}
		next.onclick = function(e){
		    e.preventDefault();
		    my_month++;
		    if(my_month>11){
		        my_year++;
		        my_month = 0;
		    }
		    refreshDate();
		}
	</script>
	
</body>
</html>