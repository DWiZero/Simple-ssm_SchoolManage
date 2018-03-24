<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员左侧导航</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/newl.css">
 <script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
 <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>

    <ul class="nav sidebar-nav">
          <li class="sidebar-brand">
              <a href="#">管理员管理导航</a>
          </li>
          <li>
              <a href="${pageContext.request.contextPath}/mm/msi.action?method=search" target="main"><i class="fa fa-fw fa-home"></i> 查找用户</a>
          </li>
          <li class="dropdown" id="mean">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-fw fa-plus"></i>学生管理 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header">上一级</li>
              <li><a href="${pageContext.request.contextPath}/mm/msi.action?method=search" target="main">学生信息</a></li>
              <li><a href="${pageContext.request.contextPath}/mm/msl.action?method=updata" target="main">学生账号</a></li>
              <li><a href="${pageContext.request.contextPath}/mm/masi.action?method=search" target="main">新增学生</a></li>           
            </ul>
          </li>
          <li class="dropdown" id="mean">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-fw fa-plus"></i>教师管理 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header">上一级</li>
              <li><a href="${pageContext.request.contextPath}/mm/mti.action?method=search" target="main">教师信息</a></li>
              <li><a href="${pageContext.request.contextPath}/mm/mtl.action?method=updata" target="main">教师账号</a></li>
              <li><a href="${pageContext.request.contextPath}/mm/mati.action?method=search" target="main">新增教师</a></li>           
            </ul>
          </li> 
          <li class="dropdown" id="mean">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-fw fa-plus"></i>教务管理 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header">上一级</li>  
              <li><a href="${pageContext.request.contextPath}/mm/mco.action?method=search" target="main">课程管理</a></li>
              <li><a href="${pageContext.request.contextPath}/mm/mci.action?method=search" target="main">班级管理</a></li>          
            </ul>
          </li>           
          <li class="dropdown" id="mean">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-fw fa-plus"></i>成绩管理 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header">上一级</li>
              <li><a href="${pageContext.request.contextPath}/mm/msg.action?method=search" target="main">成绩登记</a></li>
              <li><a href="${pageContext.request.contextPath}/mm/musg.action?method=search" target="main">成绩修改</a></li>          
            </ul>
          </li>      
          <li class="dropdown" id="mean">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-fw fa-plus"></i> 设置 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header">上一级</li>
				<li><a href="${pageContext.request.contextPath}/mm/mop.action?method=find" target="main">修改密码</a></li>              
            </ul>
          </li>         
      </ul>

</body>
</html>