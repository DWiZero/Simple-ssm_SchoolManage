<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>基本信息</title>
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
				基本信息
			</h3>
		</div>
		<div class="panel-body">
			<table class="table">				
				<tbody class="text-center">
					<tr>
						<td class="col-sm-3">教师号：</td>
						<td class="col-sm-9">${teacher.teacher_no }</td>
					</tr>
					<tr class="info">
					    <td>姓名：</td>
						<td>${teacher.teacher_name}</td>
					</tr>
					<tr class="success">
						<td>性别：</td>
						<td>${teacher.teacher_sex }</td>
					</tr>
					<tr class="info" >
					    <td>年龄：</td>
						<td>${teacher.teacher_age }</td>
					</tr>	
					<tr class="error">
					    <td>籍贯：</td>
						<td>${teacher.teacher_address }</td>
					</tr>
					<tr class="warning">						
					    <td>身份证号：</td>
						<td>${teacher.teacher_id }</td>
					</tr>					
					<tr class="error">					    
						<td>入校日期：</td>
						<td><fmt:formatDate pattern="yyyy-MM-dd" value="${teacher.teacher_work}"/></td>
					</tr>
					<tr class="warning">
						<td>联系方式：</td>
						<td>${teacher.teacher_tel}</td>
					</tr>
					<tr class="info" >
					    <td>备注：</td>
						<td>${teacher.teacher_ex }</td>
					</tr>					
				</tbody>
			</table>		
		</div>
	</div>
</div>
<div class="col-md-4 column"></div>
</div>
</body>
</html>