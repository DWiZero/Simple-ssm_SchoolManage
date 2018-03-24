<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
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
				修改密码
			</h3>
		</div>
		<div class="panel-body">
<form class="form-horizontal" role="form" method="post" action="${pageContext.request.contextPath}/tm/tutp.action">
	<div class="form-group">
		<div id="message">${message}</div>
	</div>
	<div class="form-group">
		<label for="oldp" class="col-sm-3 control-label">旧密码:</label>
		<div class="col-sm-6">
			<input type="text" class="form-control" id="oldp" name="oldpa">
		</div>
		<div class="col-sm-3"></div>
	</div>
	<div class="form-group">
		<label for="newp" class="col-sm-3 control-label">新密码:</label>
		<div class="col-sm-6">
			<input type="password" class="form-control" id="newp" name="newpa">
		</div>
		<div class="col-sm-3"></div>
	</div>	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-6">
			<button type="submit" class="btn btn-default">保存</button>
		</div>
	</div>
</form>
</div>
</div>
</div>
<div class="col-md-4 column"></div>
</div>
</body>
</html>