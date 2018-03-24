<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
</head>
<body>
   
	<div class="container">
		<div>
			<a href="#" class="navbar-brand" >XX学校LOGO</a>						
			<ul class="nav nav-pills navbar-right" style="margin-top:0">
				<li class="active"><a href="${pageContext.request.contextPath}/" target="parent"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span>简介</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>				
				<c:if test="${student_no != null}">			  
				    <li><a href="../jsp/studentinfo.jsp"><span class="glyphicon glyphicon-user"></span> ${student_no}</a></li>
				    <li><a href="${pageContext.request.contextPath}/Login/loginout.action" target="parent"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>				  				  
				</c:if>
				
				<c:if test="${teacher_no != null}">					  
				    <li><a href="../jsp/teacherinfo.jsp"><span class="glyphicon glyphicon-user"></span> ${teacher_no}</a></li>
				    <li><a href="${pageContext.request.contextPath}/Login/loginout.action" target="parent"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>				  			  
				</c:if>	
				
				<c:if test="${managername != null}">				  
				    <li><a href="../jsp/managerinfo.jsp"><span class="glyphicon glyphicon-user"></span> ${managername}</a></li>
				    <li><a href="${pageContext.request.contextPath}/Login/loginout.action" target="parent"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>				 
			  	</c:if>				
				<c:if test="${student_no == null && teacher_no == null && managername == null}">
				<li><a href="Login/loginin.action"><span class="glyphicon glyphicon-user" target="parent"></span> 登录</a></li>
				</c:if>
			</ul>
		</div>			
</div>
</body>
</html>