<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新学生信息</title>
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
				修改信息
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
						<td>
						<div class="col-sm-3"></div>
						<div class="col-sm-6"><input id="tel" class="form-control" type="text" name="teacher_tel" value="${teacher.teacher_tel}"></div>
						<div class="col-sm-3"></div>
						</td>
					</tr>
					<tr class="info" >
					    <td>备注：</td>					    
						<td>
						<textarea id="ex" name="teacher_ex" class="form-control" rows="3" cols="20">${teacher.teacher_ex }</textarea>
						</td>
					</tr>	
					<tr class="info">					    
						<td><button class="btn btn-default col-md-12" id="sav">保存</button></td>
						<td><button class="btn btn-default col-md-4" id="exi">取消</button></td>
					</tr>					
				</tbody>
			</table>		
		</div>
	</div>
</div>
<div class="col-md-4 column"></div>
</div>
<script type="text/javascript">
$(function(){
	$("#exi").on("click",function(){
		window.location.href="${pageContext.request.contextPath}/tm/ti.action"
	});
	
	$("#sav").on("click",function(){
		tel = document.getElementById("tel").value;
		ex = document.getElementById("ex").value;
		var tea = {};
		tea.student_tel= tel,
    	tea.student_ex= ex,	
		$.ajax({
	        url: '${pageContext.request.contextPath}/tm/tuti.action',
	        headers: {'Content-type': 'application/json;charset=UTF-8'},
	        type: 'POST',
	        dataType: 'text',
	        data:JSON.stringify(tea),
	        timeout: 5000,
	        async: false,
	        error: function(){	        
	         alert('获取数据失败！');
	        },
	        success: function(){
	        	window.location.href="${pageContext.request.contextPath}/tm/ti.action";
	        }
	        });
	})
})
</script>
</body>
</html>