<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教师信息</title>
</head>
<frameset rows="50px,*" noresize="true">
	<frame src="${pageContext.request.contextPath}/jsp/head.jsp" name="head" frameborder="0">
	<frameset cols="20%,*" >
		<frame src="${pageContext.request.contextPath}/jsp/TL.jsp" name="left" frameborder="0">
		<frame src="${pageContext.request.contextPath}/tm/ti.action" name="main" frameborder="0">
	</frameset>
</frameset>
</html>