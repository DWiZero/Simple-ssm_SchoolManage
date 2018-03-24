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
				新增课程
			</h3>
		</div>
		<div class="panel-body">
		<form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/mm/maco.action?method=add">
			<table class="table">
			    <thead>
					<tr>
						<th class="col-sm-4">
							课程号
						</th>
						<th class="col-sm-4">
							课程名称
						</th>
						<th class="col-sm-4">
							课程属性
						</th>										
					</tr>
				</thead>				
				<tbody>
					<tr>					
						<td><input class="form-control" type="text" name="course_no" required></td>
						<td><input class="form-control" type="text" name="course_name" required></td>
						<td><select class="form-control" name="course_major" required>
			                     <option value="必修">必修</option>
			                     <option value="选修">选修</option>			
		                    </select>
		                </td>						
					</tr>
					<tr>					    
						<td><button class="btn btn-default col-md-4" id="sav">保存</button></td>
						<td><button class="btn btn-default col-md-4" id="exi">取消</button></td>
					</tr>						
				</tbody>
			</table>	
			</form>	
		</div>
	</div>
</div>

</body>
</html>