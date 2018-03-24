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
							考试信息
						</th>					
					</tr>
				</thead>				
				<tbody>
				  <c:forEach items="${courses}" var="item">
					<tr>					
						<td>${item.course_no }</td>
						<td>${item.course_name }</td>
						<td>${item.course_major }</td>
						<td><a href="${pageContext.request.contextPath}/tm/tsc.action?course_no=${item.course_no}&course_name=${item.course_name}">教授的班级</a></td>
					</tr>	
				  </c:forEach>					
				</tbody>
			</table>		
		</div>
	</div>
</div>

</body>
</html>