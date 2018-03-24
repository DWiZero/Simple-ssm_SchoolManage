<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查找学生</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
<div class="row">
<form action="${pageContext.request.contextPath}/mm/msi.action?method=updata" method="post">
<div class="col-sm-3"></div>
<div class="input-group col-sm-6">
    <label class="input-group-addon">输入学号：</label>
    <input type="text" class="form-control" name="student_no">
    <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>搜索</button>
    </div>
</div>
<div class="col-sm-3"></div>
</form>
</div>

<div class="row">
<form action="${pageContext.request.contextPath}/mm/mti.action?method=updata" method="post">
<div class="col-sm-3"></div>
<div class="input-group col-sm-6">
    <label class="input-group-addon">输入教师号：</label>
    <input type="text" class="form-control" name="teacher_no">
    <div class="input-group-btn">
        <button class="btn btn-default" type="submit"><span class="glyphicon glyphicon-search"></span>搜索</button>
    </div>
</div>
<div class="col-sm-3"></div>
</form>
</div>
</body>
</html>