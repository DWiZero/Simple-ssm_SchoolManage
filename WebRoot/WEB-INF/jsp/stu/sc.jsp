<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有课程</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="col-md-12 column">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				所有课程
			</h3>
		</div>
		<div class="panel-body">
			<table class="table">
			    <thead>
					<tr>
						<th class="col-sm-3">
							课程号
						</th>
						<th class="col-sm-3">
							课程名称
						</th>
						<th class="col-sm-3">
							课程属性
						</th>	
						<th class="col-sm-3">
							具体信息
						</th>					
					</tr>
				</thead>				
				<tbody>
				  <c:forEach items="${courses}" var="item">
					<tr>					
						<td>${item.course_no }</td>
						<td>${item.course_name }</td>
						<td>${item.course_major }</td>
						<td><a vv="${item.course_no }">查看具体信息</a></td>
					</tr>	
				  </c:forEach>					
				</tbody>
			</table>		
		</div>
	</div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					考试信息
				</h4>
			</div>
			<div class="modal-body" id="myjsontext">
				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script type="text/javascript">
var formatDate = function (date) {  
	 var y = date.getFullYear();  
	    var m = date.getMonth() + 1;  
	    m = m < 10 ? ('0' + m) : m;  
	    var d = date.getDate();  
	    d = d < 10 ? ('0' + d) : d;  
	    var h = date.getHours();  
	    var minute = date.getMinutes();  
	    minute = minute < 10 ? ('0' + minute) : minute;  
	    return y + '-' + m + '-' + d+' '+h+':'+minute;  
};  
$(function(){
	$("a").on("click",function(){
		vv=$(this).attr("vv");
		$.ajax({
	        url: '${pageContext.request.contextPath}/sm/st.action?course_no='+vv,
	        type: 'post',
	        dataType: 'json',
	        timeout: 5000,
	        async: false,
	        error: function(){	        
	         alert('获取数据失败！');
	        },
	        success: function(data){	        	
	        	date_ti = formatDate(new Date(data.test_date));
	        	html='<table class="table text-center"><tr class="success"><td class="col-sm-3">班级名称：</td><td class="col-sm-9">'+data.class_name+'</td></tr><tr class="info"><td>课程名称：</td><td>'+data.course_name+'</td></tr><tr class="success"><td>考试地点：</td><td>'+data.test_address+'</td></tr><tr class="info"><td>考试时间：</td><td>'+date_ti+'</td></tr><tr class="success"><td>课程时间：</td><td>'+data.classcourse_time+'</td></tr><tr class="info"><td>上课位置：</td><td>'+data.classcourse_address+'</td></tr></table>'
	        	$("#myjsontext").empty()
	        	$("#myjsontext").append(html);
	        	$('#myModal').modal("show");
	        }
	        });
	})
})
</script>
</body>
</html>