<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setAttribute("domain", "http://localhost:8080/proxy/");
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>spingmvc+mybatis</title>
<link rel="stylesheet" type="text/css" href="${domain }css/index.min.css">
</head>
<body>

	<!-- head -->
	<div id="page-header" class="wrap header">
		<header id="masthead" class="site-header" role="banner">
			<div class="hgroup">
				<h1 class="site-title">
					<a class="home-link" href="${domain }" title="代理IP提取系统" rel="home">Proxy IP fetching system</a>
				</h1>
				<h2 class="site-description" id="site-description">Powered by spingmvc + mybatis</h2>
			</div>
			<div class="clear"></div>
		</header>
	</div>

	<!-- menu -->
	<div id="primary-nav">
		<div class="wrap nav">
			<nav id="site-navigation" class="main-navigation" role="navigation">
				<h3 class="menu-toggle">Menu</h3>
				<a class="assistive-text" href="#content" title="Skip to content">Skip to content</a>
				<ul class="nav-menu">
					<li id="menu_index" class="menu-item menu-item-type-custom menu-item-object-custom ">
						<a href="${domain }">Home</a>
					</li>
					<li id="menu_api" class="menu-item menu-item-type-taxonomy menu-item-object-custom current-menu-item">
						<a href="${domain }fetch.html">Fetch</a>
					</li>
					<li id="menu_help" class="menu-item menu-item-type-taxonomy menu-item-object-custom">
						<a href="${domain }help.html">Help</a>
					</li>
					
				</ul>
			</nav>
		</div>
	</div>

<!-- body -->
<div class="wrap fullwidth">
	<div id="content" style="width: auto;">
		<div id="breadcrumbs">
			<a href="${domain }">Home</a>»»&nbsp; Ip Fetching API
		</div>
		<div id="post-2" class="post-2 page type-page status-publish hentry">
			<div class="entry entry-content">
				
				<form id="fetchForm" class="largeinput" accept-charset="UTF-8" method="POST" target="_blank" action="${domain }get.html">
					<div class="control-group">
						<label class="control-label" for="name">Quantity</label>
						<div class="controls">
							<input id="num" type="text" name="num" class="span4 required" value="100" placeholder="填入数字,一次做多提取10000个">
							<span class="star">*&nbsp;</span>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="name">Country</label>
						<div class="controls">
							<input id="num" type="text" name="country" class="span4 required" value="" placeholder="Country, like China">
						</div>
					</div>
					<div class="control-group">
						<label class="control-label" for="name">ISP</label>
						<div class="controls">
							<select name="isp">
								<option value="">Any</option>
								<option value="telus">Telus</option>
								<option value="shaw">Shaw</option>
							</select>
						</div>
					</div>					
					<div class="submit" style="margin-top: 22px; ">
						<span class="smallbutton"><a id="postcontent" href="javascript:fetchForm.submit();">Fetch IP</a></span>&nbsp;&nbsp;
			
					</div>
				</form>		
				
				
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="clear"></div>
	<div id="footer">
			
	</div>
</div>


</body>
</html>