<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员管理教师账号</title>
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
				重置教师密码
			</h3>
		</div>
		<div class="panel-body">
<form class="form-horizontal" action="${pageContext.request.contextPath}/mm/mtp.action" method="post">
                <div class="form-group">
		            <div id="message"></div>
	            </div>
                <div class="form-group">
                 <label class="col-sm-3 control-label" for="tn">教师号：</label>
                 <div class="col-sm-6"><input type="text" class="form-control" name="username" value="${login.username}"></div>
                 <div class="col-sm-3"></div>
               </div>
               <div class="form-group">
                 <label class="col-sm-3 control-label" for="tp">密码：</label>
                 <div class="col-sm-6"><input type="password" class="form-control" name="password"></div>
                 <div class="col-sm-3"></div>
               </div>
               <div class="form-group" id="mia">
               <div class="col-sm-2"></div>
               <button class="btn btn-default col-sm-8" type="submit">保存</button>
               <div class="col-sm-2"></div>
               </div>
        </form>
</div>
</div>
</div>
<div class="col-md-4 column"></div>
</div>
</body>
</html>