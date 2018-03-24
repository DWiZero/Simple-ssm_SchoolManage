<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生管理左侧导航</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/newl.css">
 <script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
 <script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>

    <ul class="nav sidebar-nav">
          <li class="sidebar-brand">
              <a href="#">学生管理导航</a>
          </li>
          <li>
              <a href="${pageContext.request.contextPath}/sm/si.action" target="main"><i class="fa fa-fw fa-home"></i> 基本信息</a>
          </li>
          <li class="dropdown" id="mean">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-fw fa-plus"></i> 查看成绩 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header">Dropdown heading</li>
              <li><a href="${pageContext.request.contextPath}/sm/sg.action?limit=100" target="main">所有成绩</a></li>
              <li><a href="${pageContext.request.contextPath}/sm/sg.action?limit=60" target="main">通过成绩</a></li> 
			  <li><a href="${pageContext.request.contextPath}/sm/sg.action?limit=59" target="main">尚未通过 </a></li>            
            </ul>
          </li>      
          <li>
              <a href="${pageContext.request.contextPath}/sm/sc.action" target="main"><i class="fa fa-fw fa-cog"></i> 所有课程</a>
          </li>
          <li class="dropdown" id="mean">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <i class="fa fa-fw fa-plus"></i> 设置 <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header">Dropdown heading</li>
              <li><a href="${pageContext.request.contextPath}/sm/si.action?method=updata" target="main">修改信息</a></li> 
				<li><a href="${pageContext.request.contextPath}/sm/susp.action?method=find" target="main">修改密码</a></li>              
            </ul>
          </li>         
      </ul>

</body>
</html>