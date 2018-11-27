<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page session="true"%>
<%@ page isELIgnored="false" %>
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
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Activate | EV Point</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<script src="https://cdn.mobitel.lk/livecss.js" type="text/javascript"></script>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="https://cdn.mobitel.lk/assets/global/plugins/clockface/css/clockface.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-colorpicker/css/colorpicker.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css"/>
<link rel="stylesheet" type="text/css" href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link href="https://cdn.mobitel.lk/assets/global/css/components-md.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link id="style_color" href="https://cdn.mobitel.lk/assets/admin/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css"/>
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
<body class="page-md page-header-fixed page-quick-sidebar-over-content ">
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
			<ul class="page-sidebar-menu page-sidebar-menu-light " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
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
                	<jsp:param name="myaccount_active_open" value="active open" />
                	<jsp:param name="myaccount_open" value="open" />
                	<jsp:param name="evadmin" value="evadmin" />
                	<jsp:param name="myaccount_a" value="active" />
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
			Registration <small>user registration</small>
			</h3>
			<div class="page-bar">
				<ul class="page-breadcrumb">
					<li>
						<i class="fa fa-home"></i>
						<a href="../">Home</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="../">My Account</a>
						<i class="fa fa-angle-right"></i>
					</li>
					<li>
						<a href="../ev/activate">Activate</a>
					</li>

				</ul>
				<!--
				<div class="page-toolbar">
					<div class="btn-group pull-right">
						<button type="button" class="btn btn-fit-height grey-salt dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
						Actions <i class="fa fa-angle-down"></i>
						</button>
						<ul class="dropdown-menu pull-right" role="menu">
							<li>
								<a href="#">Action</a>
							</li>
							<li>
								<a href="#">Another action</a>
							</li>
							<li>
								<a href="#">Something else here</a>
							</li>
							<li class="divider">
							</li>
							<li>
								<a href="#">Separated link</a>
							</li>
						</ul>
					</div>
				</div>
				-->
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
			    <div class="col-md-12 ">
                    <div class="portlet box blue ">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-gift"></i> Activate
                            </div>
                            <!--
                            <div class="tools">
                                <a href="" class="collapse">
                                </a>
                                <a href="#portlet-config" data-toggle="modal" class="config">
                                </a>
                                <a href="" class="reload">
                                </a>
                                <a href="" class="remove">
                                </a>
                            </div>
                            -->
                        </div>
                        <div class="portlet-body form">
                            <div id="static_success" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                            <h4 class="modal-title">Confirmation</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>
                                                 User has been successfully saved
                                            </p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" data-dismiss="modal" class="btn default">OK</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div id="static_error" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                            <h4 class="modal-title">Error</h4>
                                        </div>
                                        <div class="modal-body">
                                            <p>
                                                 Errors occured
                                            </p>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" data-dismiss="modal" class="btn default">OK</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <form class="form-horizontal" role="form" id="activate_form">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label for="cardNumber" class="col-md-2 control-label">Card Number</label>
                                        <div class="col-md-4">
                                            <div class="input-icon">
                                                <i class="fa fa-credit-card"></i>
                                                <input type="text" class="form-control" id="cardNumber" placeholder="8071....." name="cardNumber">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label for="mobileNumber" class="col-md-2 control-label">mCash Mobile Number</label>
                                        <div class="col-md-4">
                                            <div class="input-icon">
                                                <i class="fa fa-mobile"></i>
                                                <input type="text" class="form-control" id="mobileNumber" placeholder="mCash mobile number" name="mobileNumber">
                                            </div>
                                        </div>
                                    </div>












                                </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button type="submit" class="btn blue"  id="form_submit">Submit</button>
                                            <button type="button" class="btn default" id="form_cancel">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                            </form>

                            <form class="form-horizontal" role="form" id="conf_form">
                                <div class="form-body">
                                    <div class="form-group">
                                        <label for="otp" class="col-md-2 control-label">OTP</label>
                                        <div class="col-md-4">
                                            <div class="input-icon">
                                                <i class="fa  fa-sort-numeric-asc"></i>
                                                <input type="text" class="form-control" id="otp" placeholder="otp" name="otp">
                                                <span class="help-block"> check your mCash mobile number for otp. </span>
                                            </div>
                                        </div>
                                    </div>










                                </div>
                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-offset-3 col-md-9">
                                            <button type="submit" class="btn blue"  id="form_submit">Activate</button>
                                            <button type="button" class="btn default" id="form_cancel">Cancel</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>

			    </div>
			</div>


			<!-- END PAGE CONTENT-->
		</div>
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
<script	src="https://cdn.mobitel.lk/assets/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>


<script src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-selectsplitter/bootstrap-selectsplitter.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery-minicolors/jquery.minicolors.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/autosize/autosize.min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>

<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/clockface/js/clockface.js"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->


<!-- END CORE PLUGINS -->
<script src="https://cdn.mobitel.lk/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/quick-sidebar.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/pages/scripts/activate.js" type="text/javascript"></script>


<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>



<script>
jQuery(document).ready(function() {
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
//QuickSidebar.init(); // init quick sidebar
Demo.init(); // init demo features
Activate.init();
//EvRegister.init();
//ComponentsFormTools2.init();

});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>