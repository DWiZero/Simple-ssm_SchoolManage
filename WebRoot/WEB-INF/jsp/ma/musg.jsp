<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改学生成绩</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div>
${message}
</div>
<div class="row">
<form action="${pageContext.request.contextPath}/mm/musg.action?method=find" method="post">
<div class="col-sm-3"></div>
<div class="input-group col-sm-6">
    <label class="input-group-addon">输入学生号：</label>
    <input type="text" class="form-control" name="student_no">
    <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>搜索</button>
    </div>
</div>
<div class="col-sm-3"></div>
</form>
</div>
<div class="col-md-12 column">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">
				<strong>成绩</strong>
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
							课程成绩
						</th>
						<th class="col-sm-3">
							操作
						</th>													
					</tr>
				</thead>				
				<tbody>
				<c:if test="${grades.size()==0}">
				<tr><th style="color:red">没有相关数据</th></tr>
				</c:if>
				  <c:forEach items="${grades}" var="item">
					<tr>					
						<td>${item.course_no }</td>
						<td>${item.course_name }</td>
						<td>${item.grade_value }</td>
						<td><a sn="${student_no}" cn="${item.course_no}" gv="${item.grade_value }"><span class="glyphicon glyphicon-pencil"></span>修改</a></td>								
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
					修改成绩
				</h4>
			</div>
			<div class="modal-body" id="myjsontext">				
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script type="text/javascript">
$(function(){
	$("a").on("click",function(){
		student_no = $(this).attr("sn");
		course_no = $(this).attr("cn");
		grade_value = $(this).attr("gv");
		html='<form action="${pageContext.request.contextPath}/mm/musg.action?method=up" method="post"><table class="table"><tr><th class="col-sm-4">学号</th><td><input type="text" name="student_no" value="'+student_no+'"></td></tr><tr><th class="col-sm-4">课程号</th><td><input type="text" name="course_no" value="'+course_no+'"></td></tr><tr><th class="col-sm-4">成绩</th><td><input type="text" name="grade_value" value="'+grade_value+'"></td></tr><tr class="info"><td><button class="btn btn-default col-md-4" type="submit">保存</button></td><td><button class="btn btn-default col-md-4" type="reset">重置</button></td></tr></table></form>';
		$("#myjsontext").empty();
    	$("#myjsontext").append(html);
    	$('#myModal').modal("show");
	})
})
</script>
</body>
</html>