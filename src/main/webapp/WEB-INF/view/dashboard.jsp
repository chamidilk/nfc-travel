<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<fmt:setBundle basename="messages" />
<%@ page session="true"%>
<%@ page isELIgnored="false" %>
<fmt:message key="message.password" var="noPass" />
<fmt:message key="message.username" var="noUser" />
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.5
Version: 4.1.0
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
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Dashboard | EV Point</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGIN STYLES -->
<link href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL PLUGIN STYLES -->
<!-- BEGIN PAGE STYLES -->
<link href="https://cdn.mobitel.lk/assets/admin/pages/css/tasks.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="https://cdn.mobitel.lk/assets/global/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/css/plugins.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="https://cdn.mobitel.lk/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<jsp:include page="favicon.jsp">
	<jsp:param name="header" value="header" />
</jsp:include>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page page-header-fixed page-quick-sidebar-over-content">
<!-- BEGIN HEADER -->
<jsp:include page="header.jsp">
	<jsp:param name="header" value="header" />
</jsp:include>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	<div class="page-sidebar-wrapper">
		<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
		<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
		<div class="page-sidebar navbar-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->
			<!-- DOC: Apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
			<!-- DOC: Apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
			<!-- DOC: Apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
			<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
			<!-- DOC: Set data-keep-expand="true" to keep the submenues expanded -->
			<!-- DOC: Set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
			<ul class="page-sidebar-menu" data-keep-expanded="true" data-auto-scroll="true" data-slide-speed="200">
				<!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
				<li class="sidebar-toggler-wrapper">
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler">
					</div>
					<!-- END SIDEBAR TOGGLER BUTTON -->
				</li>
				<!-- DOC: To remove the search box from the sidebar you just need to completely remove the below "sidebar-search-wrapper" LI element -->
				<li class="sidebar-search-wrapper">
					<!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
					<!-- DOC: Apply "sidebar-search-bordered" class the below search form to have bordered search box -->
					<!-- DOC: Apply "sidebar-search-bordered sidebar-search-solid" class the below search form to have bordered & solid search box -->
					<form class="sidebar-search " action="extra_search.html" method="POST">
						<a href="javascript:;" class="remove">
						<i class="icon-close"></i>
						</a>
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Search...">
							<span class="input-group-btn">
							<a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
							</span>
						</div>
					</form>
					<!-- END RESPONSIVE QUICK SEARCH FORM -->
				</li>
				<jsp:include page="sidebar.jsp">
                	<jsp:param name="sidebar" value="sidebar" />
                	<jsp:param name="dashboard_active_open" value="active open" />
                	<jsp:param name="dashboard_open" value="open" />
                	<jsp:param name="dashboard_active" value="active" />
                	<jsp:param name="dashboard" value="register" />
                </jsp:include>



			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
	</div>
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
							<h4 class="modal-title">Modal title</h4>
						</div>
						<div class="modal-body">
							 Widget settings form goes here
						</div>
						<div class="modal-footer">
							<button type="button" class="btn blue">Save changes</button>
							<button type="button" class="btn default" data-dismiss="modal">Close</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->

			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			<h3 class="page-title">
			Dashboard <small>reports & statistics</small>
			</h3>
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="index.html">Home</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="#">Dashboard</a>
					</li>
				</ul>
				<div class="page-toolbar">
					<div id="dashboard-report-range" class="pull-right tooltips btn btn-fit-height grey-salt" data-placement="top" data-original-title="Change dashboard date range">
						<i class="icon-calendar"></i>&nbsp; <span class="uppercase visible-lg-inline-block"></span>&nbsp; <i class="fa fa-angle-down"></i>
					</div>
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN DASHBOARD STATS -->


<sec:authorize access="hasRole('ADMIN_DASHBOARD')">
			<div class="row">
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
					<div class="dashboard-stat blue-madison">
						<div class="visual">
							<i class="fa fa-plus"></i>
						</div>
						<div class="details">
							<div class="number">
								 <span class="" data-counter="counterup" data-value="1520" id="plus_cnt">0</span>
							</div>
							<div class="desc">
								 Available Devices
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
					<div class="dashboard-stat red-intense">
						<div class="visual">
							<i class="fa fa-minus"></i>
						</div>
						<div class="details">
							<div class="number">
								 <span class="" data-counter="counterup" data-value="1520" id="minus_cnt">0</span>
							</div>
							<div class="desc">
								 Charging Devices
							</div>
						</div>
						<a class="more" href="javascript:;">
						View more <i class="m-icon-swapright m-icon-white"></i>
						</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
                    <div class="dashboard-stat green-haze">
                        <div class="visual">
                            <i class="fa fa-frown-o"></i>
                        </div>
                        <div class="details">
                            <div class="number">
                                 <span class="" data-counter="counterup" data-value="1520" id="offline_cnt">0</span>
                            </div>
                            <div class="desc">
                                 Offline Devices
                            </div>
                        </div>
                        <a class="more" href="javascript:;">
                        View more <i class="m-icon-swapright m-icon-white"></i>
                        </a>
                    </div>
                </div>
			</div>
</sec:authorize>

<sec:authorize access="hasRole('EV_USER_DASHBOARD')">
			<div class="row">
			    <div class="col-md-6 col-sm-6">
                    <!-- BEGIN PORTLET-->
                    <div class="portlet light grey-cararra">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-share font-red-sunglo hide"></i>
                                <span class="caption-subject font-red-sunglo bold ">Usage <i>(wh)</i></span>
                                <span class="caption-helper">monthly stats...</span>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div id="wh_loading">
                                <img src="https://cdn.mobitel.lk/assets/admin/layout/img/loading.gif" alt="loading"/>
                            </div>
                            <div id="wh_content" class="display-none">
                                <div id="wh_activities" style="height: 228px;">
                                </div>
                            </div>
                            <div style="margin: 20px 0 10px 30px">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                        <span class="label label-sm label-success">
                                        Usage (wh): </span>
                                        <h3><span class="" data-counter="counterup" data-value="1520" id="wh_cnt">0</span></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PORTLET-->
                </div>


                <div class="col-md-6 col-sm-6">
                    <!-- BEGIN PORTLET-->
                    <div class="portlet light grey-cararra">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="icon-share font-red-sunglo hide"></i>
                                <span class="caption-subject font-red-sunglo bold ">Usage <i>(lkr)</i></span>
                                <span class="caption-helper">monthly stats...</span>
                            </div>
                        </div>
                        <div class="portlet-body">
                            <div id="lkr_loading">
                                <img src="https://cdn.mobitel.lk/assets/admin/layout/img/loading.gif" alt="loading"/>
                            </div>
                            <div id="lkr_content" class="display-none">
                                <div id="lkr_activities" style="height: 228px;">
                                </div>
                            </div>
                            <div style="margin: 20px 0 10px 30px">
                                <div class="row">
                                    <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                        <span class="label label-sm label-info">
                                        Usage (LKR): </span>
                                        <h3><span class="" data-counter="counterup" data-value="1520" id="lkr_cnt">0</span></h3>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END PORTLET-->
                </div>
            </div>
</sec:authorize>


			<!-- END DASHBOARD STATS -->
		</div>
	</div>
	<!-- END CONTENT -->
	<!-- BEGIN QUICK SIDEBAR -->

	<!-- END QUICK SIDEBAR -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<jsp:include page="footer.jsp">
	<jsp:param name="footer" value="footer" />
</jsp:include>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="https://cdn.mobitel.lk/assets/global/plugins/respond.min.js"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<!-- IMPORTANT! Load jquery-ui.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.pulsate.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-daterangepicker/moment.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets7/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets7/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets7/pages/scripts/jquery.number.min.js" type="text/javascript"></script>
<!-- IMPORTANT! fullcalendar depends on jquery-ui.min.js for drag & drop support -->
<script src="https://cdn.mobitel.lk/assets/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="https://cdn.mobitel.lk/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/pages/scripts/index.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/pages/scripts/tasks.js" type="text/javascript"></script>

<script src="https://cdn.mobitel.lk/assets/admin/pages/scripts/dashboard.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {    
   Metronic.init(); // init metronic core componets
   Layout.init(); // init layout
   //QuickSidebar.init(); // init quick sidebar
Demo.init(); // init demo features
    Dashboard.init();
   //Index.init();
   //Index.initDashboardDaterange();
   //Index.initJQVMAP(); // init index page's custom scripts
   Index.initCalendar(); // init index page's custom scripts
    //Index.initCharts(); // init index page's custom scripts
   //Index.initChat();
   //Index.initMiniCharts();
   //Tasks.initDashboardWidget();
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>