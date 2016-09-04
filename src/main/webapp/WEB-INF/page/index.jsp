<%@page import="com.imhangoo.proxy.common.PageParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
					<li id="menu_index" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item">
						<a href="${domain }">Home</a>
					</li>
					<li id="menu_api" class="menu-item menu-item-type-taxonomy menu-item-object-custom ">
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
	<div id="post-2" class="post-2 page type-page status-publish hentry">
		<div class="entry entry-content">
			<blockquote style="font-style:normal;">
				<p><b style="font-size: 14px;">Techniques used in the system？</b></p>
				<p>① Springmvc</p>
				<p>② Mybatis</p>
				<p>③ Spring</p>
			</blockquote>
		</div>
		<div class="clear"></div>
		<div class="entry entry-content">
			<div class="entry-title">Newest 100 free proxy IPs</div>
				 
				<div id="list">
					<table class="table">
						<thead>
							<tr>
								<th>IP</th>
								<th>PORT</th>
								<th>Country</th>
								<th>Province</th>
								<th>ISP</th>
								<th>Time</th>
							</tr>
						</thead>
						<tbody>
							
							<c:forEach items="${pageParam.data }" var="item">
							<tr>
								<td>${item.ip }</td>
								<td>${item.port }</td>
								<td>${item.country }</td>
								<td>${item.province } ${item.city }</td>
								<td>${item.isp }</td>
								<td>${item.findTime }</td>
							</tr>							
							</c:forEach>

						</tbody>
					</table>
					<div class="wp-pagenavi">
						<span>Page</span>
						<%
						
							PageParam pageParam = (PageParam)request.getAttribute("pageParam");
							int currPage = pageParam.getCurrPage();
							int totalPage = pageParam.getTotalPage();
							for(int i = 1; i <= totalPage; i ++){
								if(i == currPage){
									%><span class="current"><%=currPage %></span><%
								}else{
									%><a href="index.html?page=<%=i %>"><%=i %></a><%
								}
							}
						%>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>
	<div id="footer">
			
	</div>
</div>


</body>
</html>