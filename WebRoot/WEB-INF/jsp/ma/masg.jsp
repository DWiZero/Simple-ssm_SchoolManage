<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>班级学生登记成绩</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div>
${message}
</div>
<div class="col-md-12 column">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				添加成绩:${course_name}
			</h3>
		</div>
		<div class="panel-body">
		<form action="${pageContext.request.contextPath}/mm/masg.action?method=add" method="post">
			<table class="table">
			    <thead>
					<tr>
						<th class="col-sm-4">
							学号
						</th>
						<th class="col-sm-4">
							姓名
						</th>
						<th class="col-sm-4">
							成绩
						</th>											
					</tr>
				</thead>				
				<tbody>
				  <c:forEach items="${students}" var="item" varStatus="it">
					<tr>
						<td><input type="text" name="grades[${it.index}].student_no" value="${item.student_no }" disabled ></td>
						<td>${item.student_name}
						    <input type="hidden" name="grades[${it.index}].course_no" value="${course_class.course_no}" >
						</td>
						<td><input type="text" name="grades[${it.index}].grade_value" required></td>						
					</tr>	
				  </c:forEach>					
				    <tr class="info">					    
						<td><button class="btn btn-default col-md-4" type="submit">保存</button></td>
						<td><button class="btn btn-default col-md-4" type="reset">重置</button></td>
					</tr>	
				</tbody>
			</table>
			</form>		
		</div>
	</div>
</div>
</body>
</html>