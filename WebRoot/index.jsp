<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>教学管理</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-3.2.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>

  <nav class="navbar navbar-default navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a href="#" class="navbar-brand" >XX学校LOGO</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav navbar-right" style="margin-top:0">
				<li class="active"><a href="#"><span class="glyphicon glyphicon-home"></span> 首页</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-list"></span> 简介</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-question-sign"></span> 关于</a></li>				
				<c:if test="${student_no != null}">			
				<li class="dropdown">
				  <a href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ${student_no}<span class="caret"></span></a>
				  <ul class="dropdown-menu">
				    <li><a href="jsp/studentinfo.jsp"><span class="glyphicon glyphicon-th"></span> 个人中心</a></li>
				    <li><a href="Login/loginout.action"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>
				  </ul> 
				</li>				  
				</c:if>
				
				<c:if test="${teacher_no != null}">			
				<li class="dropdown">
				  <a href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ${teacher_no}<span class="caret"></span></a>
				  <ul class="dropdown-menu">
				    <li><a href="jsp/teacherinfo.jsp"><span class="glyphicon glyphicon-th"></span> 个人中心</a></li>
				    <li><a href="Login/loginout.action"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>
				  </ul> 
				</li>				  
				</c:if>	
				
				<c:if test="${managername != null}">			
				<li class="dropdown">
				  <a href="#" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span> ${managername}<span class="caret"></span></a>
				  <ul class="dropdown-menu">
				    <li><a href="jsp/managerinfo.jsp"><span class="glyphicon glyphicon-th"></span> 个人中心</a></li>
				    <li><a href="Login/loginout.action"><span class="glyphicon glyphicon-remove"></span> 注销</a></li>
				  </ul> 
				</li>				  
				</c:if>				
				<c:if test="${student_no == null && teacher_no == null && managername == null}">
				<li><a href="Login/loginin.action"><span class="glyphicon glyphicon-user"></span> 登录</a></li>
				</c:if>
			</ul>
		</div>		
	</div>
</nav>

<div id="myCarousel" class="carousel slide">
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<div class="carousel-inner">
		<div class="item active" style="background:#223240">
			<img src="img/s1.jpg" alt="第一张">
		</div>
		<div class="item" style="background:#F5E4DC;">
			<img src="img/s2.jpg" alt="第二张">
		</div>
		<div class="item" style="background:#DE2A2D;">
			<img src="img/s3.jpg" alt="第三张">
		</div>
	</div>
	<a href="#myCarousel" data-slide="prev" class="carousel-control left">
		<span class="glyphicon glyphicon-chevron-left"></span>
	</a>
	<a href="#myCarousel" data-slide="next" class="carousel-control right">
		<span class="glyphicon glyphicon-chevron-right"></span>
	</a>
</div>

<div class="tab1">
	<div class="container">
		<h2 class="tab-h2">校训</h2>
		<p class="tab-p">求实，创新</p>
		<div class="row">
			<div class="col-md-6 col">
				<div class="media">
					<div class="media-left">
						<a href="#"><img src="img/tab1-1.png" class="media-object" alt=""></a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">院系专业</h4>
						<p>理学、工学、经济学、法学、文学、教育学、艺术学、管理学、农学等九类学科！</p>
						<p>其中工程学学科、材料科学学科进入ESI全球排名前1%。学校设有21个学院和研究生院、继续教育学院！</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col">
				<div class="media">
					<div class="media-left">
						<a href="#"><img src="img/tab1-2.png" class="media-object" alt=""></a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">师资力量</h4>
						<p>现有专任教师2116名，其中具有博士学位的1096名！具有教授、副教授等高级专业技术职称人员967名，</p>
						<p>博士生导师181名，具有院士荣誉的特聘教授14名，全国杰出专业技术人才3名，中国青年科技奖获得者3！</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col">
				<div class="media">
					<div class="media-left">
						<a href="#"><img src="img/tab1-3.png" class="media-object" alt=""></a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">学科建设</h4>
						<p>3个国家重点学科，6个国家级特色专业建设点，一级学科博士学位授权点15！</p>
						<p>二级学科博士学位授权点49个，一级学科硕士学位授权点36个，二级学科硕士学位授权点126个。博士后科研流动站13个。</p>
					</div>
				</div>
			</div>
			<div class="col-md-6 col">
				<div class="media">
					<div class="media-left">
						<a href="#"><img src="img/tab1-4.png" class="media-object" alt=""></a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">教学建设</h4>
						<p>学校拥有4个国家级实验教学示范中心，6个国家级特色</p>
						<p>专业建设点，7个国家级“工程实践教育中心”。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div class="tab2">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 tab2-img">
				<img src="img/tab2.png" class="auto img-responsive center-block" alt="">
			</div>
			<div class="text col-md-6 col-sm-6 tab2-text">
				<h3>强大的学术资源</h3>
				<p>截至2013年4月，太原理工大学图书馆馆藏总量187万册，其中中文图书130万册，外文图书38万册，合订本期刊25万册，中文现刊5218种，外文现刊4018种，捐赠文献3300册。</p>
			</div>
		</div>
	</div>
</div>


<div class="tab3">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6">
				<img src="img/tab3.png" class="auto img-responsive center-block" alt="">
			</div>
			<div class="text col-md-6 col-sm-6">
				<h3>强大的师资力量</h3>
				<p>精英老师的集合，让您的跟随导师，突破自我</p>
			</div>
		</div>
	</div>
</div>

<footer id="footer">
	<div class="container">
		<p>企业培训 | 合作事宜 | 版权投诉</p>
		<p>XXX.XXX. Powered by Bootstrap.</p>
	</div>
</footer>

<script type="text/javascript">
$(function () {

	//轮播自动播放
	$('#myCarousel').carousel({
		//自动4秒播放
		interval : 4000,
	});

	$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	$(window).resize(function () {
		$('.text').eq(0).css('margin-top', ($('.auto').eq(0).height() - $('.text').eq(0).height()) / 2 + 'px');
	});

	$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	$(window).resize(function () {
		$('.text').eq(1).css('margin-top', ($('.auto').eq(1).height() - $('.text').eq(1).height()) / 2 + 'px');
	});

});
</script>
</body>
</html>