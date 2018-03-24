<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>课程增加班级</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="col-md-8 column">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				增加班级设置
			</h3>
			${message}
		</div>
		<div class="panel-body">
		 <form class="form-horizontal" action="${pageContext.request.contextPath}/mm/mcac.action?method=add" method="post">
			<table class="table">				
				<tbody class="text-center">
					<tr>
						<td class="col-sm-3">课程号：</td>
						<td>
						<input class="form-control col-sm-9" type="text" name="course_no" value="${course_no}" disabled>
						</td>						
					</tr>
					<tr class="info">
					    <td>班级号：</td>
						<td>
						<input class="form-control" type="text" name="class_no" required>
						</td>
					</tr>
					<tr class="success">
					    <td>教师号：</td>
						<td>
						<input class="form-control" type="text" name="teacher_no" required>
						</td>
					</tr>
					<tr class="error" >
					    <td>上课时间：</td>
						<td>
						<input class="form-control" type="text" name="classcourse_time" required>
						</td>
					</tr>	
					<tr class="info">
					    <td>上课地点：</td>
						<td>
						<input class="form-control" type="text" name="classcourse_address" required>
						</td>
					</tr>
					<tr class="warning">						
					    <td>考试日期：</td>
						<td>
						<input class="form-control" type="datetime-local" name="test_date">
						</td>
					</tr>					
					<tr class="error">					    
						<td>考试地点：</td>
						<td>
						<input class="form-control" type="text" name="test_address">
						</td>
					</tr>						
					<tr class="info">					    
						<td><button class="btn btn-default col-md-12" type="submit">保存</button></td>
						<td><button class="btn btn-default col-md-4" type="reset">重置</button></td>
					</tr>					
				</tbody>
			</table>
			</form>		
		</div>
	</div>
</div>
<div class="col-md-4 column"></div>
</div>
</body>
</html>