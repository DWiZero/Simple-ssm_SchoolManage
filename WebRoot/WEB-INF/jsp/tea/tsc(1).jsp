<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程下的所有班级</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="col-md-12 column">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				课程：${course_name}
			</h3>
		</div>
		<div class="panel-body">
			<table class="table">
			    <thead>
					<tr>
						<th class="col-sm-1">
							班级号
						</th>
						<th class="col-sm-2">
							班级名称
						</th>
						<th class="col-sm-2">
							上课时间
						</th>	
						<th class="col-sm-2">
							教室地点
						</th>
						<th class="col-sm-2">
							考试时间
						</th>	
						<th class="col-sm-2">
							考试地点
						</th>
						<th class="col-sm-1">
							学生信息
						</th>					
					</tr>
				</thead>				
				<tbody>
				  <c:forEach items="${studentClass}" var="item">
					<tr>					
						<td>${item.class_no }</td>
						<td>${item.class_name }</td>
						<td>${item.classcourse_time }</td>
						<td>${item.classcourse_address }</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${item.test_date}"/></td>
						<td>${item.test_address }</td>
						<td><a vv="${item.class_no}">查看班级学生</a></td>
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
					学生信息
				</h4>
			</div>
			<div class="modal-body" id="myjsontext">				
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function(){
	$("a").on("click",function(){
		vv=$(this).attr("vv");
		$.ajax({
	        url: '${pageContext.request.contextPath}/tm/tcs.action?class_no='+vv,
	        type: 'GET',
	        dataType: 'json',
	        timeout: 5000,
	        async: false,
	        error: function(){	        
	         alert('获取数据失败！');
	        },
	        success: function(data){
	        	html1='<table class="table text-center"><tr class="success"><th>学号：</th><th>姓名：</th></tr>';
	        	var html2="";
	        	for(i=0;i<data.length;i++){
	        		html2 += '<tr class="info"><td>'+data[i].student_no+'</td><td>'+data[i].student_name+'</td></tr>';
	        	}
	        	html3 = html1 + html2;
	        	html = html3 +'</table>';
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