<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
<%@ page isELIgnored="false" %>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.6
Version: 4.5.3
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>Metronic | Form Layouts</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN LAYOUT FIRST STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Oswald:400,300,700" rel="stylesheet" type="text/css" />
    <!-- END LAYOUT FIRST STYLES -->
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="https://cdn.mobitel.lk/assets6/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.mobitel.lk/assets6/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.mobitel.lk/assets6/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.mobitel.lk/assets6/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.mobitel.lk/assets6/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN THEME GLOBAL STYLES -->
    <link href="https://cdn.mobitel.lk/assets6/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="https://cdn.mobitel.lk/assets6/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME GLOBAL STYLES -->
    <!-- BEGIN THEME LAYOUT STYLES -->
    <link href="https://cdn.mobitel.lk/assets6/layouts/layout6/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdn.mobitel.lk/assets6/layouts/layout6/css/custom.min.css" rel="stylesheet" type="text/css" />
    <!-- END THEME LAYOUT STYLES -->
    <jsp:include page="favicon.jsp">
    	<jsp:param name="header" value="header" />
    </jsp:include> </head>
<!-- END HEAD -->

<body class="page-md">
<!-- BEGIN HEADER -->
<jsp:include page="header6.jsp">
	<jsp:param name="header" value="header" />
</jsp:include>
<!-- END HEADER -->
<!-- BEGIN CONTAINER -->
<div class="container-fluid">
    <div class="page-content page-content-popup">
        <div class="page-content-fixed-header">
            <!-- BEGIN BREADCRUMBS -->
            <ul class="page-breadcrumb">
                <li>
                    <a href="#">Form Stuff</a>
                </li>
                <li>Form Layouts</li>
            </ul>
            <!-- END BREADCRUMBS -->
            <div class="content-header-menu">
                <!-- BEGIN DROPDOWN AJAX MENU -->

                <!-- END DROPDOWN AJAX MENU -->
                <!-- BEGIN MENU TOGGLER -->
                <button type="button" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="toggle-icon">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </span>
                </button>
                <!-- END MENU TOGGLER -->
            </div>
        </div>
        <div class="page-sidebar-wrapper">
            <!-- BEGIN SIDEBAR -->
            <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
            <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
            <div class="page-sidebar navbar-collapse collapse">
                <!-- BEGIN SIDEBAR MENU -->
                <!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
                <!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
                <!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
                <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
                <!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
                <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                    <jsp:include page="sidebar6.jsp">
                        <jsp:param name="sidebar" value="sidebar" />
                        <jsp:param name="ev_admin_active_open" value="active open" />
                        <jsp:param name="ev_admin_open" value="open" />
                        <jsp:param name="ev_user_open" value="open" />
                        <jsp:param name="ev_admin" value="ev_admin" />
                        <jsp:param name="ev_register_cs" value="active" />
                    </jsp:include>

                </ul>

                <!-- END SIDEBAR MENU -->
            </div>
            <!-- END SIDEBAR -->
        </div>
        <div class="page-fixed-main-content">
            <!-- BEGIN PAGE BASE CONTENT -->

            <!-- END PAGE BASE CONTENT -->
        </div>
        <!-- BEGIN FOOTER -->
        <jsp:include page="footer6.jsp">
            <jsp:param name="footer" value="footer" />
        </jsp:include>
        <!-- END FOOTER -->
    </div>
</div>
<!-- END CONTAINER -->
<!-- BEGIN QUICK SIDEBAR -->

<!-- END QUICK SIDEBAR -->
<!--[if lt IE 9]>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/respond.min.js"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/excanvas.min.js"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<script src="https://cdn.mobitel.lk/assets6/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="https://cdn.mobitel.lk/assets6/global/scripts/app.min.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="https://cdn.mobitel.lk/assets6/pages/scripts/form-samples.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="https://cdn.mobitel.lk/assets6/layouts/layout6/scripts/layout.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets6/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
</body>

</html>