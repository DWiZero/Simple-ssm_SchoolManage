<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>学生信息</title>
</head>
<frameset rows="8%,*" noresize="true">
	<frame src="${pageContext.request.contextPath}/jsp/head.jsp" name="head" frameborder="0">
	<frameset cols="20%,*">
		<frame src="${pageContext.request.contextPath}/jsp/SL.jsp" name="left" frameborder="0">
		<frame src="${pageContext.request.contextPath}/sm/si.action" name="main" frameborder="0">
	</frameset>
</frameset>
</html>