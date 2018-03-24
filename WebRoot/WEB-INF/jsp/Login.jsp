<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>

<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/login.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<div class="row">
   <div class="col-sm-3"></div>  
   <div class="col-sm-6">
   <div class="tabbable" id="tabs">
	<ul class="nav nav-tabs">
		<li class="col-sm-4 active" id="dd"><a href="#tabs-1" data-toggle="tab">学生登录</a></li>
		<li class="col-sm-4" id="dd"><a href="#tabs-2" data-toggle="tab">老师登录</a></li>
		<li class="col-sm-4" id="dd"><a href="#tabs-3" data-toggle="tab">管理员登录</a></li>
	</ul>
	<div class="tab-content">
	<div id="tabs-1" class="tab-pane active">
	    <form class="form-horizontal" action="${pageContext.request.contextPath}/Login/student.action" method="post">
                <div class="form-group">
		            <div id="message" style="text-align:center">${message}</div>
	            </div>
                <div class="form-group">
                 <label class="col-sm-3 control-label" for="tn">学号：</label>
                 <div class="col-sm-6"><input type="text" class="form-control" name="username" id="tn" value="${login.username}" required></div>
                 <div class="col-sm-3"></div>
               </div>
               <div class="form-group">
                 <label class="col-sm-3 control-label" for="tp">密码：</label>
                 <div class="col-sm-6"><input type="password" class="form-control" name="password" id="tp" required></div>
                 <div class="col-sm-3"></div>
               </div>
               <div class="form-group" id="mia">
               <div class="col-sm-2"></div>
               <button class="btn btn-default col-sm-8" type="submit">登录</button>
               <div class="col-sm-2"></div>
               </div>
        </form>
	</div>
	<div id="tabs-2" class="tab-pane">
	    <form class="form-horizontal" action="${pageContext.request.contextPath}/Login/teacher.action" method="post">
                <div class="form-group">
		            <div id="message" style="text-align:center">${message}</div>
	            </div>
                <div class="form-group">
                 <label class="col-sm-3 control-label" for="tn">教师号：</label>
                 <div class="col-sm-6"><input type="text" class="form-control" name="username" id="tn" value="${login.username}" required></div>
                 <div class="col-sm-3"></div>
               </div>
               <div class="form-group">
                 <label class="col-sm-3 control-label" for="tp">密码：</label>
                 <div class="col-sm-6"><input type="password" class="form-control" name="password" id="tp" required></div>
                 <div class="col-sm-3"></div>
               </div>
                <div class="form-group" id="mia">
               <div class="col-sm-2"></div>
               <button class="btn btn-default col-sm-8" type="submit">登录</button>
               <div class="col-sm-2"></div>
               </div>
        </form>
	</div>
	<div id="tabs-3" class="tab-pane">
	    <form class="form-horizontal" action="${pageContext.request.contextPath}/Login/manager.action" method="post">
               <div class="form-group">
		            <div id="message" style="text-align:center">${message}</div>
	            </div>
               <div class="form-group">
                 <label class="col-sm-3 control-label" for="tn">管理员号：</label>
                 <div class="col-sm-6"><input type="text" class="form-control" name="username" id="tn" value="${login.username}" required></div>
                 <div class="col-sm-3"></div>
               </div>
               <div class="form-group">
                 <label class="col-sm-3 control-label" for="tp">密码：</label>
                 <div class="col-sm-6"><input type="password" class="form-control" name="password" id="tp" required></div>
                 <div class="col-sm-3"></div>
               </div>
                <div class="form-group" id="mia">
               <div class="col-sm-2"></div>
               <button class="btn btn-default col-sm-8" type="submit">登录</button>
               <div class="col-sm-2"></div>
               </div>              
        </form>
	</div>
    </div>
    </div>
   </div>
   <div class="col-sm-3"></div>
</div>
</div>
</body>
</html>