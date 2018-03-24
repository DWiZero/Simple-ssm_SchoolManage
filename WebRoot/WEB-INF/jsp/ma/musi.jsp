<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生基本信息</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="row">
<form action="${pageContext.request.contextPath}/mm/msi.action?method=updata" method="post">
<div class="col-sm-3"></div>
<div class="input-group col-sm-6">
    <label class="input-group-addon">学生信息</label>
    <input type="text" class="form-control" name="student_no">
    <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>搜索</button>
    </div>
</div>
<div class="col-sm-3"></div>
</form>
</div>
<div class="col-md-8 column">
	<div class="panel panel-default" id="updatainfo">
		<div class="panel-heading">
			<h3 class="panel-title">
				修改学生信息
			</h3>
		</div>
		<div class="panel-body">
		 <form class="form-horizontal" action="${pageContext.request.contextPath}/mm/musi.action" method="post">
			<table class="table">				
				<tbody class="text-center">
				
					<tr class="success">
						<td class="col-sm-3">学号：</td>
						<td>
						<input class="form-control col-sm-9" type="text" name="student_no" value="${student.student_no}">
						</td>
					</tr>
					<tr class="info">
					    <td>姓名：</td>
						<td>
						<input class="form-control" type="text" name="student_name" value="${student.student_name}">
						</td>
					</tr>
					<tr class="success">
						<td>性别：</td>
						<td>						
						<div class="input-group">
                            <input type="radio" class="btn btn-default" name="student_sex" value="男" ${student.student_sex eq'男'?'checked':''}>男
                            <input type="radio" class="btn btn-default" name="student_sex" value="女" ${student.student_sex eq'男'?'checked':''}>女
                         </div>
						</td>
					</tr>
					<tr class="info">
					    <td>身份证号：</td>
						<td>
						<input class="form-control" type="text" name="student_id" value="${student.student_id}">
						</td>
					</tr>
					<tr class="warning">
					    <td>籍贯：</td>
						<td>
						<input class="form-control" type="text" name="student_address" value="${student.student_address}">
						</td>
					</tr>
					<tr class="succes">
						<td>生日：</td>
						<td>						
						<input class="form-control" type="text" name="student_birthday" value="${student.student_birthday}">						
						</td>
					</tr>					
					<tr class="info">					    
						<td>入学日期：</td>
						<td>
						<input class="form-control" type="text" name="student_schooldate" value="${student.student_schooldate}">
						</td>
					</tr>
					<tr class="warning">
						<td>联系方式：</td>
						<td>						
						<input class="form-control" type="text" name="student_tel" value="${student.student_tel}">						
						</td>
					</tr>
					<tr class="info" >
					    <td>备注：</td>					    
						<td>
						<textarea name="student_ex" class="form-control" rows="3" cols="20">${student.student_ex}</textarea>
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