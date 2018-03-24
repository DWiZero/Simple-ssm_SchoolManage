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
<div class="col-md-8 column">
	<div class="panel panel-default" id="updatainfo">
		<div class="panel-heading">
			<h3 class="panel-title">
				新增学生
			</h3>
		</div>
		<div class="panel-body">
		 <form class="form-horizontal" action="${pageContext.request.contextPath}/mm/masi.action?method=add" method="post">
			<table class="table">				
				<tbody class="text-center">
				    <tr class="info">
					    <td>班级号：</td>
						<td>
						<input class="form-control" type="text" name="class_no" required>
						</td>
					</tr>
					<tr class="success">
						<td class="col-sm-3">学号：</td>
						<td>
						<input class="form-control col-sm-9" type="text" name="student_no" required>
						</td>
					</tr>
					<tr class="info">
					    <td>姓名：</td>
						<td>
						<input class="form-control" type="text" name="student_name" required>
						</td>
					</tr>
					<tr class="success">
						<td>性别：</td>
						<td>						
						<div class="input-group">
                            <input type="radio" class="btn btn-default" name="student_sex" value="男" required>男
                            <input type="radio" class="btn btn-default" name="student_sex" value="女" >女
                         </div>
						</td>
					</tr>
					<tr class="info">
					    <td>身份证号：</td>
						<td>
						<input class="form-control" type="text" name="student_id" required>
						</td>
					</tr>
					<tr class="warning">
					    <td>籍贯：</td>
						<td>
						<input class="form-control" type="text" name="student_address">
						</td>
					</tr>
					<tr class="succes">
						<td>生日：</td>
						<td>						
						<input class="form-control" type="text" name="student_birthday">						
						</td>
					</tr>					
					<tr class="info">					    
						<td>入学日期：</td>
						<td>
						<input class="form-control" type="date" name="student_schooldate" required>
						</td>
					</tr>
					<tr class="warning">
						<td>联系方式：</td>
						<td>						
						<input class="form-control" type="text" name="student_tel">						
						</td>
					</tr>
					<tr class="info" >
					    <td>备注：</td>					    
						<td>
						<textarea name="student_ex" class="form-control" rows="3" cols="20"></textarea>
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