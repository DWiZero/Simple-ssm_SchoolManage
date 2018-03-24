<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>论坛</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
<script type="text/javascript" src="../js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/nicEdit.js"></script>
</head>
<body>
<div class="container">
<div class="jumbotron">
	<div class="container">
		<hgroup>
			<h1>讨论区</h1>
			<h4>疑惑讨论、信息分享等...</h4>
		</hgroup>
	</div>
</div>

 <nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a href="#" class="navbar-brand" >未名学校</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-right" style="margin-top:0">
				<li><a href="${pageContext.request.contextPath}/"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
				<li  class="active"><a href=""><span class="glyphicon glyphicon-question-sign"></span> 论坛</a></li>				
				<c:if test="${student_no != null}">			
				<li class="dropdown">
				  <a href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ${student_no}<span class="caret"></span></a>
				  <ul class="dropdown-menu">
				    <li><a href="${pageContext.request.contextPath}/jsp/studentinfo.jsp"><span class="glyphicon glyphicon-th"></span> 个人中心</a></li>
				    <li><a href="${pageContext.request.contextPath}/Login/loginout.action"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>
				  </ul> 
				</li>				  
				</c:if>
				
				<c:if test="${teacher_no != null}">			
				<li class="dropdown">
				  <a href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ${teacher_no}<span class="caret"></span></a>
				  <ul class="dropdown-menu">
				    <li><a href="${pageContext.request.contextPath}/jsp/teacherinfo.jsp"><span class="glyphicon glyphicon-th"></span> 个人中心</a></li>
				    <li><a href="${pageContext.request.contextPath}/Login/loginout.action"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>
				  </ul> 
				</li>				  
				</c:if>	
				
				<c:if test="${managername != null}">			
				<li class="dropdown">
				  <a href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ${managername}<span class="caret"></span></a>
				  <ul class="dropdown-menu">
				    <li><a href="${pageContext.request.contextPath}/jsp/managerinfo.jsp"><span class="glyphicon glyphicon-th"></span> 个人中心</a></li>
				    <li><a href="${pageContext.request.contextPath}/Login/loginout.action"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>
				  </ul> 
				</li>				  
				</c:if>				
				<c:if test="${student_no == null && teacher_no == null && managername == null}">
				<li><a href="${pageContext.request.contextPath}/Login/loginin.action"><span class="glyphicon glyphicon-user"></span> 登录</a></li>
				</c:if>
			</ul>
		</div>		
	</div>
</nav>
${sav}
<div id="information">
	<div class="container">
		<div class="row">
			<div class="col-md-8">
				<div class="container-fluid" style="padding:0;">
					
					<c:forEach items="${page.list}" var="item" varStatus="it">
					<div class="row info-content">						
						<div class="col-md-12 col-sm-12 col-xs-12">
							<h4>${item.title}</h4>
							<span style="text-align: left">作者：${item.user_id}</span><span class="pull-right">发表时间：<fmt:formatDate pattern="yyyy-MM-dd" value="${item.date}"/></span>
							<p class="hidden-xs bg-info">${item.context}</p>
							<div style="text-align:center;" class="alert alert-success"><label for="showcomment${it}">评论</label><span id="showcomment${it}" class="glyphicon glyphicon-comment" ti="${item.title_id}"></span></div>																				
							<div id="comment${it}" style="display:none;" class="row">							   						
							</div>
							<hr>
						</div>
					</div>					
					</c:forEach>	
					
				</div>
			</div>
			
			
		</div>
	</div>
</div>

<ul class="pagination">
    <c:if test="${page.startPage} > 1">
    <li><a href="#">&laquo;</a></li>
    </c:if>
    
    <c:forEach begin="${page.startPage}" end="${page.endPage}" var="i" step="1">
    <li><a href="${pageContext.request.contextPath}/LT/title.action?pageNum=${i}">${i}</a></li>
    </c:forEach>
    
    <c:if test="${page.endPage < page.totalPage}">
    <li><a href="#">&raquo;</a></li>
    </c:if>
</ul>
<c:if test="${student_no != null || teacher_no != null || managername != null}">
<div class="panel panel-default">
	 <div class="panel-heading">
					添加新帖内容
	 </div>
	 <div class="panel-body">
		<form id="tt" class="form-horizontal" action="${pageContext.request.contextPath}/LT/addtitle.action" method="post">                
            <div class="form-group">
                 <label class="col-sm-3 control-label" for="tn">主题：</label>
                 <div class="col-sm-6"><input type="text" class="form-control" name="title" id="tn"  required></div>
                 <div class="col-sm-3"></div>
            </div>
            <div class="form-group">
                 <label class="col-sm-3 control-label" for="tp">文章内容：</label>
                 <div class="col-sm-6" id="tc">
                    <textarea name="context" class="form-control" id="tp" required></textarea>
                 </div>
                 <div class="col-sm-3"></div>
            </div>
               <input type="hidden" name="user_id" value="${student_no}${teacher_no}${managername}">
               <input type="hidden" name="title_id" value="1">
               <input type="hidden" name="date"  id="title_date">
               <div class="form-group" id="mia">
                 <div class="col-sm-4"></div>
                 <button class="btn btn-default col-sm-4" type="button" onclick="$('#tp').val($('.nicEdit-main').html());$('form').submit();">发表</button>
                 <div class="col-sm-4"></div>
               </div>
        </form>
	 </div>
	 </div>
</div>
</c:if>


<footer id="footer">
	<div class="container">
		<p>企业培训 | 合作事宜 | 版权投诉</p>
		<p>XXX.XXX. Powered by Bootstrap.</p>
	</div>
</footer>
<script type="text/javascript">
bkLib.onDomLoaded(function() {
	 nicEditors.allTextAreas();
	});
$(function(){	
	if(document.getElementById("title_date")!=null){
		document.getElementById("title_date").value=new Date();	
	}
	var formatDate = function (date) {  
		 var y = date.getFullYear();  
		    var m = date.getMonth() + 1;  
		    m = m < 10 ? ('0' + m) : m;  
		    var d = date.getDate();  
		    d = d < 10 ? ('0' + d) : d;  		   
		    return y + '-' + m + '-' + d;  
	};  	
	$("span[id^='showcomment']").on("click",function(){
		vv=$(this).attr("ti");
		obj=$(this).parent().next("div[id^='comment']")
		if(obj.css("display")==='none'){
		$.ajax({
	        url: '${pageContext.request.contextPath}/LT/comment.action?title_id='+vv,
	        type: 'GET',
	        dataType: 'json',
	        timeout: 5000,
	        async: false,
	        error: function(){	        
	         alert('获取数据失败！');
	        },
	        success: function(data){
	        	var html='<c:if test="${student_no == null && teacher_no == null && managername == null}"><div class="col-md-12 col-sm-12 col-xs-12" style="text-align: center">添加评论，请先<a href="${pageContext.request.contextPath}/Login/loginin.action">登录</a></div></c:if><c:if test="${student_no != null || teacher_no != null || managername != null}"><div class="col-md-12 col-sm-12 col-xs-12"> <form action="${pageContext.request.contextPath}/LT/comadd.action" method="post"><div class="col-sm-2">${student_no}${teacher_no}${managername}:</div><div class="col-sm-10"><input type="text" class="form-control" name="context" required></div><input type="hidden" name="comment_id" value="1"><input type="hidden" name="user_id" value="${student_no}${teacher_no}${managername}"><input type="hidden" name="comment_date" value="'+new Date()+'"><input type="hidden" name="title_id" value="'+vv+'"><button class="btn pull-right" type="submit">评论</button></form></div><div class="col-md-12 col-sm-12 col-xs-12"><hr></div></c:if>';
	        	for(i=0;i<data.length;i++){
	        		html += '<div class="col-md-3 col-sm-3 col-xs-3"><span class="pull-right">'+data[i].user_id+':</span></div><div class="col-md-9 col-sm-9 col-xs-9"><p class="hidden-xs">'+data[i].context+'</p><span style="text-align: left">'+formatDate(new Date(data[i].comment_date))+'</span></div><div class="col-md-12 col-sm-12 col-xs-12"><hr></div>';	        		
	        	}
	        	obj.empty();
	        	obj.append(html);	
	        	obj.css("display","");
	        }
	        });}else{
	        	obj.css("display","none");
	    	}
	})		
})
</script>
</body>
</html>