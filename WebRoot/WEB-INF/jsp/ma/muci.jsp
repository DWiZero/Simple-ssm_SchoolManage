<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新课程信息</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="col-md-8">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				修改课程信息
			</h3>
			${message}
		</div>
		<div class="panel-body">
		 <form class="form-horizontal" action="${pageContext.request.contextPath}/mm/muci.action?method=upda" method="post">
			<table class="table">				
				<tbody class="text-center">
					<tr>
						<td class="col-sm-3">课程号：</td>
						<td>
						<input class="form-control col-sm-9" type="text" name="course_no" value="${cci.course_no}">
						</td>						
					</tr>
					<tr class="error" >
			            <td>课程名：</td>
						<td>${cci.course_name}</td></tr>
					<tr class="info">
					    <td>班级号：</td>
						<td>
						<input class="form-control" type="text" name="class_no" value="${cci.class_no}">
						</td>						
					</tr>
					<tr class="warning">
					    <td>班级名：</td>
						<td>${cci.class_name}</td>
				    </tr>
					<tr class="error" >
					    <td>上课时间：</td>
						<td>
						<input class="form-control" type="text" name="classcourse_time" value="${cci.classcourse_time}">
						</td>
					</tr>	
					<tr class="info">
					    <td>上课地点：</td>
						<td>
						<input class="form-control" type="text" name="classcourse_address" value="${cci.classcourse_address}">
						</td>
					</tr>
					<tr class="warning">						
					    <td>考试日期：</td>
						<td>
						<input class="form-control" type="text" name="test_date" value="${cci.test_date}">
						</td>
					</tr>					
					<tr class="error">					    
						<td>考试地点：</td>
						<td>
						<input class="form-control" type="text" name="test_address" value="${cci.test_address}">
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