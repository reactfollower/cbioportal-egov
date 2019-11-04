<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!DOCTYPE html>
<html>
<head>
	<tiles:insertAttribute name="head_css"/>
	<tiles:insertAttribute name="js"/>
</head>

<body class="hold-transition skin-black sidebar-mini fixed">
<div class="wrapper">
	<header class="main-header">
		<tiles:insertAttribute name="top"/>
	</header>
	<!-- Left side column. contains the logo and sidebar -->
	<aside class="main-sidebar">
		<tiles:insertAttribute name="rgLeft"/>
	</aside>

	<!-- Content Wrapper. Contains page content -->
	<div class="content-wrapper" data-toggle="control-sidebar">
		<tiles:insertAttribute name="content"/>
	</div>
	<!-- /.content-wrapper -->
	<footer class="main-footer">
		<tiles:insertAttribute name="footer"/>
	</footer>

	<!-- /.control-sidebar -->
	<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
	<div class="control-sidebar-bg"></div>
	
	<tiles:insertAttribute name="modal"/>
</div>
<!-- ./wrapper -->


</body>
</html>
