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
<div class="row container">
<form action="${pageContext.request.contextPath}/mm/mco.action?method=find" method="post">
<div class="col-sm-3"></div>
<div class="input-group col-sm-6">
    <label class="input-group-addon">输入课程号：</label>
    <input type="text" class="form-control" name="course_no">
    <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>搜索</button>
    </div>
</div>
<div class="col-sm-3"></div>
</form>
</div>
<div class="row container">
<div class="col-md-12 column">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				课程号：${course_no}  课程名：${cct[0].course_name}
			</h3>
		</div>
		<div class="panel-body">
			<table class="table">
			    <thead>
					<tr>
						<th class="col-sm-2">
							班级号
						</th>
						<th class="col-sm-2">
							班级名称
						</th>
						<th class="col-sm-2">
							教师号
						</th>	
						<th class="col-sm-2">
							教师名称
						</th>
						<th class="col-sm-2">
							操作
						</th>						
					</tr>
				</thead>				
				<tbody>
				  <c:forEach items="${cct}" var="item">
					<tr>					
						<td>${item.class_no }</td>
						<td>${item.class_name }</td>
						<td>${item.teacher_no }</td>
						<td>${item.teacher_name }</td>
						<td><a href="${pageContext.request.contextPath}/mm/mdc.action?class_no=${item.class_no}&course_no=${item.course_no }">删除</a></td>
					</tr>	
				  </c:forEach>
				  <c:if test="${course_no != null}">
				  <tr><td><a href="${pageContext.request.contextPath}/mm/mcac.action?method=find&course_no=${course_no}"><span class="glyphicon glyphicon-plus"></span>增添班级</a></td></tr>			
				  </c:if>
				</tbody>
			</table>		
		</div>	
	    <div class="panel-footer">
	    <a href="${pageContext.request.contextPath}/mm/maco.action?method=find"><span class="glyphicon glyphicon-plus"></span>增添课程</a>
	    </div>
	</div>
</div>
</div>
</body>
</html>