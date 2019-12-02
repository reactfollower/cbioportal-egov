<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<% String docRoot = "/"; %>
<!DOCTYPE html>
<html>
<head>
	<%--<tiles:insertAttribute name="head_css"/>--%>
	<%--<tiles:insertAttribute name="js"/>--%>
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/style.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/loader/indicator.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/loader/linepulse.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/loader/squarejelly.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/loader/ballclip.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/loader/packman.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/jqtip/jquery.qtip.min.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/jbox/jbox.all.min.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/chromasome/oncob-styles/oncokb.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/chromasome/main-module.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/chromasome/tabs-module.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/chromasome/collapsible-module.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/chromasome/level-module.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/chromasome/oncoKbTreatmentTable.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/bootstrap4/bootstrap.min.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/datatables/datatables.min.css" type="text/css" />
	<%--<link rel="stylesheet" href="<%//docRoot%>js/page/patient/plugin/bootstrap4/fontawasome5.css" type="text/css" />--%>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
	<link rel="stylesheet" href="<%=docRoot%>js/page/patient/plugin/bootstrap4/style.css" type="text/css" />
	<link rel="stylesheet" href="<%=docRoot%>jqwidgets/styles/jqx.base.css" type="text/css" />

	<style>
		.font-small {
			font-size: xx-small;
			font-weight: bold;
		}
		.font-msmall {
			font-size: small;
			/*font-weight: bold;*/
		}
	</style>

	<script type='text/javascript' src="<%=docRoot%>js/common_const.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/jquery-3.4.1.min.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/popper.min.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxcore.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxdata.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxbuttons.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxscrollbar.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxmenu.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxgrid.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxgrid.selection.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxgrid.columnsresize.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxgrid.pager.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxgrid.sort.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxgrid.filter.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxlistbox.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/jqxdropdownlist.js"></script>
	<script type="text/javascript" src="<%=docRoot%>jqwidgets/scripts/demos.js"></script>

	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/bootstrap4/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=docRoot%>js/page/patient/plugin/datatables/datatables.min.js"></script>
	<script type="text/javascript" src="<%=docRoot%>js/page/patient/plugin/jbox/jbox.all.min.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/jqtip/jquery.qtip.min.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/lodash.min.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/patientAction.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/patientUtil.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/WindowStore.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/blockUI.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/moment-with-locales.min.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/raphael/raphael.min.js"></script>
	<script type='text/javascript' src="<%=docRoot%>js/page/patient/plugin/raphael/raphaelscale.js"></script>

</head>
<body class="hold-transition skin-black sidebar-mini fixed">
<div class="wrapper">
	<%--<header class="main-header">
		<tiles:insertAttribute name="top"/>
	</header>--%>
	<!-- Left side column. contains the logo and sidebar -->
	<%--	<aside class="main-sidebar">
            <tiles:insertAttribute name="adminLeft"/>
        </aside>--%>

	<!-- Content Wrapper. Contains page content -->
	<%--<div class="content-wrapper" data-toggle="control-sidebar">--%>
	<tiles:insertAttribute name="content"/>
	<div style="position: absolute;left:-999px;">
		<input type="text" class="">
	</div>
</div>
<!-- /.content-wrapper -->
<!-- Add the sidebar's background. This div must be placed
   immediately after the control sidebar -->
<%--<div class="control-sidebar-bg"></div>--%>
<%--<tiles:insertAttribute name="modal"/>--%>
</div>
<!-- ./wrapper -->
<script>
    /*    $(document).ready(function () {
            $(".sidebar-toggle").trigger("click");
        });*/
</script>

</body>
</html>