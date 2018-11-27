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
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>Signup | EV Point</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="https://cdn.mobitel.lk/assets/global/plugins/select2/select2.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/admin/pages/css/login3.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="https://cdn.mobitel.lk/assets/global/css/components-md.css" id="style_components" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/global/css/plugins-md.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/admin/layout/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="https://cdn.mobitel.lk/assets/admin/layout/css/themes/light2.css" rel="stylesheet" type="text/css" id="style_color"/>
<link href="https://cdn.mobitel.lk/assets/admin/layout/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<jsp:include page="favicon.jsp">
	<jsp:param name="header" value="header" />
</jsp:include>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-md login">
<!-- BEGIN LOGO -->
<!--
<div class="logo">
	<a href="index.html">
	<img src="https://cdn.mobitel.lk/assets/admin/layout/img/logo-big.png" alt=""/>
	</a>
</div>
-->
<!-- END LOGO -->
<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
<div class="menu-toggler sidebar-toggler">
</div>
<!-- END SIDEBAR TOGGLER BUTTON -->
<!-- BEGIN LOGIN -->
<div class="content">
	<!-- BEGIN LOGIN FORM -->
	<form class="login-form" action="j_spring_security_check" method="post">
		<h3 class="form-title">Login to your account</h3>
		<div class="alert alert-danger display-hide">
			<button class="close" data-close="alert"></button>
			<span>
			Enter any username and password. </span>
		</div>
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Username</label>
			<div class="input-icon">
				<i class="fa fa-user"></i>
				<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Username" name="j_username"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			<div class="input-icon">
				<i class="fa fa-lock"></i>
				<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Password" name="j_password"/>
			</div>
		</div>
		<div class="form-actions">
			<label class="checkbox">
			<input type="checkbox" name="remember" value="1"/> Remember me </label>
			<button type="submit" class="btn green-haze pull-right">
			Login <i class="m-icon-swapright m-icon-white"></i>
			</button>
		</div>
		<div class="login-options">
			<h4>Or login with</h4>
			<ul class="social-icons">
				<li>
					<a class="facebook" data-original-title="facebook" href="javascript:;">
					</a>
				</li>
				<li>
					<a class="twitter" data-original-title="Twitter" href="javascript:;">
					</a>
				</li>
				<li>
					<a class="googleplus" data-original-title="Goole Plus" href="javascript:;">
					</a>
				</li>
				<li>
					<a class="linkedin" data-original-title="Linkedin" href="javascript:;">
					</a>
				</li>
			</ul>
		</div>
		<div class="forget-password">
			<h4>Forgot your password ?</h4>
			<p>
				 no worries, click <a href="javascript:;" id="forget-password">
				here </a>
				to reset your password.
			</p>
		</div>
		<div class="create-account">
			<p>
				 Don't have an account yet ?&nbsp; <a href="javascript:;" id="register-btn">
				Create an account </a>
			</p>
		</div>
		<input type="hidden" name="${_csrf.parameterName}" value="${param['_csrf.token']}"/>
	</form>
	<!-- END LOGIN FORM -->
	<!-- BEGIN FORGOT PASSWORD FORM -->
	<form class="forget-form" action="index.html" method="post">
		<h3>Forget Password ?</h3>
		<p>
			 Enter your e-mail address below to reset your password.
		</p>
		<div class="form-group">
			<div class="input-icon">
				<i class="fa fa-envelope"></i>
				<input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email"/>
			</div>
		</div>
		<div class="form-actions">
			<button type="button" id="back-btn" class="btn">
			<i class="m-icon-swapleft"></i> Back </button>
			<button type="submit" class="btn green-haze pull-right">
			Submit <i class="m-icon-swapright m-icon-white"></i>
			</button>
		</div>
	</form>
	<!-- END FORGOT PASSWORD FORM -->
	<!-- BEGIN REGISTRATION FORM -->
	<form class="register-form" action="index.html" method="post">
		<h3>Sign Up</h3>
		<p>
			 Enter your personal details below:
		</p>


		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">First Name</label>
			<div class="input-icon">
				<i class="fa fa-user"></i>
				<input class="form-control placeholder-no-fix" type="text" placeholder="First Name" name="firstName"/>
			</div>
		</div>


		<div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Last Name</label>
            <div class="input-icon">
                <i class="fa fa-user"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Last Name" name="lastName"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">gender</label>
            <div class="controls">
                <div class="input-icon">
                    <i class="fa fa-female"></i>
                    <select name="gender" id="gender" class="select2 form-control">
                        <option value="">Gender</option>
                        <option value="M">MALE</option>
                        <option value="F">FEMALE</option>
                    </select>
                </div>
            </div>

        </div>


		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Address</label>
			<div class="input-icon">
				<i class="fa fa-check"></i>
				<input class="form-control placeholder-no-fix" type="text" placeholder="Address" name="address"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">City/Town</label>
			<div class="input-icon">
				<i class="fa fa-location-arrow"></i>
				<input class="form-control placeholder-no-fix" type="text" placeholder="City/Town" name="city"/>
			</div>
		</div>

		<div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Contact Number</label>
            <div class="input-icon">
                <i class="fa fa-mobile"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Contact Number" name="mobileNumber"/>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">NIC</label>
            <div class="input-icon">
                <i class="fa fa-key"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="NIC" name="nic"/>
            </div>
        </div>

		<input name="country" value='LK' type='hidden'/>



		<p>
			 Enter your account details below:
		</p>
		<div class="form-group">
			<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
			<label class="control-label visible-ie8 visible-ie9">Email</label>
			<div class="input-icon">
				<i class="fa fa-envelope"></i>
				<input class="form-control placeholder-no-fix" type="text" placeholder="Email" name="email"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Password</label>
			<div class="input-icon">
				<i class="fa fa-lock"></i>
				<input class="form-control placeholder-no-fix" type="password" autocomplete="off" id="register_password" placeholder="Password" name="password"/>
			</div>
		</div>
		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
			<div class="controls">
				<div class="input-icon">
					<i class="fa fa-check"></i>
					<input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="Re-type Your Password" name="rpassword"/>
				</div>
			</div>
		</div>

		<!-- <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Mobile Number</label>
            <div class="input-icon">
                <i class="fa fa-mobile"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Enter mCash mobile number" name="mcashMobileNo"/>
            </div>
        </div> -->


		<div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">Vehicle Registration Number</label>
            <div class="input-icon">
                <i class="fa fa-car"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Vehicle Registration Number" id="vehicleRegistrationNumber" name="vehicleRegistrationNumber"/>
            </div>
        </div>



		<div class="form-group">
			<label class="control-label visible-ie8 visible-ie9">NFC Card Collection</label>
			<div class="controls">
				<div class="input-icon">
				    <i class="fa fa-cab"></i>
					<select name="nfcCardCollectionMode" id="nfcCardCollectionMode" class="select2 form-control">
                        <option value="">Delivery method</option>
                        <option value="BRANCH">Collect at Mobitel Branch</option>
                        <!-- <option value="POST">Deliver to Home Address</option> -->
                    </select>
				</div>
			</div>
		</div>

		<div class="form-group homeaddress">
            <label class="control-label visible-ie8 visible-ie9">Home Address</label>
            <div class="input-icon">
                <i class="fa fa-home"></i>
                <input class="form-control placeholder-no-fix" type="text" placeholder="Home Address" id="homeAddress" name="homeAddress"/>
            </div>
        </div>

        <div class="form-group branch">
            <label class="control-label visible-ie8 visible-ie9">Branch</label>
            <div class="controls">
                <div class="input-icon">
                    <i class="fa fa-cab"></i>
                    <select name="branch" id="branch" class="select2 form-control">
                        <option value="">Select Branch</option>
                        <c:forEach var="branch" items="${branches}">
                            <option value='${branch.branchCode}'>${branch.branchName}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

        </div>


		<div class="form-group">
			<label>
			<input type="checkbox" name="tnc"/> I agree to the <a data-toggle="modal" href="#basic"">
			Terms of Service </a>
			</label>
			<div id="register_tnc_error">
			</div>
		</div>

		<div class="form-group">
            <label>
            <input type="checkbox" name="pin"/> I agree to forego entering of the PIN number in respect of the use of this Service.
            </label>
            <div id="register_pin_error">
            </div>
        </div>


		<div class="form-actions">
			<button id="register-back-btn" type="button" class="btn">
			<i class="m-icon-swapleft"></i> Back </button>
			<button type="submit" data-loading-text="Saving..." id="register-submit-btn" class="demo-loading-btn btn green-haze pull-right">
			Sign Up <i class="m-icon-swapright m-icon-white"></i>
			</button>
		</div>

		<div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                        <h4 class="modal-title"><strong>EV Cards Charging Service TERMS AND CONDITIONS</strong></h4>
                    </div>
                    <div class="modal-body">

                    <strong>Definitions</strong></br></br>



<strong>"EPPL"</strong> means EV Point (Private) Limited</br>

<strong>"EV Recharger Units"</strong> means the electric charging devices supplied by EPPL for the charging of electric cars and duly installed at the charging station and other suitable locations island wide.</br>

<strong>"EV Point network"</strong> means a brand developed by Mobitel and EPPL which is used in connection with EV charging hardware network provided or approved by EPPL.</br>

<strong>"NFC"</strong> means short-range wireless connectivity technology format determined by the Near Field Communication (NFC) Forum</br>

<strong>"EV Cards"</strong> shall mean the NFC technology based cards connected to the NFC-mCash platform which shall be capable for making transactions and payment through NFC-mCash platform.</br></br>

<strong>Terms and Conditions applicable to the EV Cards charging service</strong></br> </br>


                    <ol>
                         <li>Any Customer   who uses EV Cards charging  Service shall be deemed to have accepted the terms and conditions as setout herein.</li>

<li>EV Cards charging  Service shall be a service which enable the Customers to charge electric cards using the EV Cards.</li>

<li>Mobitel is responsible for the provision of the payment mechanism using NFC Cards and EPPL is solely responsible for the provision of the EV Charging Units and electricity charging services provided through the said Units.</li>

<li>The Customers acknowledge that they register for this Service by entering the mCash Personal Identification Number (PIN) only at the time of registration and that Customer shall not be required to enter the PIN Number at the time of executing each transaction.</li>

<li>Thus Customer acknowledges that protection of the physical EV Card is crucial as anyone in possession of the EV Card may utilize, abuse or misuse the EV Card as there is no authentication requirement of PIN number at the time of using the Service.</li>

<li>The Customer shall be solely responsible for the safety of the EV Card issued to the Customer and shall take all necessary action to prevent theft, loss, or any damage being caused to the said EV Card.</li>

<li>In the event if a Customer loses a EV Card, the Customer must immediately inform Mobitel by calling mCash hotline 1711 or 071 777 1710 and shall get the EV charging facility immediately disconnected.  Mobitel shall not be responsible for any losses incurred by Customers after losing the EV Card upto the time of reporting the loss of EV Card to Mobitel and shall be responsible for settlement of all payment relating to the use of the Cards.</li>

<li>The Customer shall be solely responsible for bearing the cost of replacing or repairing such EV Cards.</li>

<li>The Customer shall use all precautions to prevent fraud, theft, loss, unauthorized usage of the EV Card. Provided however the Customer shall be solely responsible for unauthorized use of the EV Cards issued to such Customer and shall keep Mobitel indemnified against  all claims</li>

<li>The Customer acknowledges that Mobitel only provides payment mechanism and  disclaims all claims for damages or liabilities arising relating or rising out of  the provision EV Charging Units and the services provided through the said Units.</li>

<li>All rights and liabilities connected to the EV Card Service shall be limited to the customers and shall not be extended to third parties. For the avoidance of doubt, third party herein shall mean all the persons (whole world) including friends and family other than the customer.</li>
<li>The Customer acknowledges that Mobitel is only responsible for the payment collection through the EV Cards and shall have no responsibility whatsoever relating to the EV Charging Units or electricity charging services provided through the EV Charging Units. In no event shall Mobitel or its officers, directors, employees, agents or service providers be liable for any indirect, special, incidental, or consequential damages (including damages for loss of life, loss of body parts, loss of time, loss of good health, loss of money/profits, or the like), whether based on breach of contract, tort (including negligence), breach of warranty, or otherwise, especially relating to any losses or damages caused by EV Charging Units or electricity charging services provided by EPPL.</li>

<li>Mobitel does not provide any performance warranties to Customers and this EV Cards charging  Service shall be provided on an "AS IS" BASIS.</li>

<li>Mobitel disclaims all warranties, whether express or implied, including the implied warranties of suitability, quality, and fitness for a particular purpose, and disclaims all liabilities arising relating to EV Cards charging  Service.</li>

<li>In no event shall Mobitel or its officers, directors, employees, agents or service providers be liable for any indirect, special, incidental, or consequential damages (including damages for loss of life, loss of body parts, loss of time, loss of good health, loss of money/profits, or the like), whether based on breach of contract, tort (including negligence), breach of warranty, or otherwise.</li>

<li>In any event the aggregate liability of Mobitel and its associated service providers for all damages, injuries, and liability incurred by use of the EV Point service shall be limited to an amount equal to the total fees paid to Mobitel by such customer during six (6) months before the event giving rise to such loss, cost, claim, or damages, and in no event shall the total aggregate liability of Mobitel exceed the total amount of fees received during the preceding 6 months by Mobitel from such Customer.</li>

<li>These terms and conditions may be amended and updated from time to time by Mobitel with or without notice to the Customers.</li>

</ol>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
	</form>
	<!-- END REGISTRATION FORM -->
</div>
<!-- END LOGIN -->
<!-- BEGIN COPYRIGHT -->
<div class="copyright">
	 2016 &copy; EV Point by Mobitel.
</div>
<!-- END COPYRIGHT -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="https://cdn.mobitel.lk/assets/global/plugins/respond.min.js"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery-migrate.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script	src="https://cdn.mobitel.lk/assets/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="https://cdn.mobitel.lk/assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="https://cdn.mobitel.lk/assets/global/plugins/select2/select2.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="https://cdn.mobitel.lk/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/layout.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/layout/scripts/demo.js" type="text/javascript"></script>
<script src="https://cdn.mobitel.lk/assets/admin/pages/scripts/login.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {     
  Metronic.init(); // init metronic core components
  Layout.init(); // init current layout
  Login.init();
  Demo.init();

  jQuery('.login-form').hide();
              jQuery('.register-form').show();
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>