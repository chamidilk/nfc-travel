<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false" %>
<fmt:setBundle basename="messages" />
<%@ page session="true"%>

                <li class='start ${param.dashboard_active_open}'>
                    <a href="javascript:;">
                    <i class="icon-home"></i>
                    <span class="title">Dashboard</span>
                    <c:if test="${not empty param.dashboard}">
                        <span class="selected"></span>
                    </c:if>
                    <span class='arrow ${param.dashboard_open}'></span>
                    </a>
                    <ul class="sub-menu">
                        <li class='${param.dashboard_active}'>
                            <a href="../ev/dashboard">
                            <i class="icon-bar-chart"></i>
                            Dashboard</a>
                        </li>
                    </ul>
                </li>

<sec:authorize access="hasAnyRole('USER_CREATE_PRIVILEGE','USER_UPDATE_PRIVILEGE','USER_READ_PRIVILEGE','CARD_DEACTIVATE_PRIVILEGE')">
                <li class='start ${param.register_active_open}'>
					<a href="javascript:;">
					<i class="icon-users"></i>
					<span class="title">Administration</span>
					<c:if test="${not empty param.register}">
                        <span class="selected"></span>
                    </c:if>
					<span class='arrow ${param.register_open}'></span>
					</a>
					<ul class="sub-menu">
<sec:authorize access="hasRole('USER_CREATE_PRIVILEGE')">
						<li class="${param.register_c}">
							<a href="../user/register">
							<i class="icon-user"></i>
							Add User</a>
						</li>
</sec:authorize>
						<!-- <li class="${param.register_ud}">
                            <a href="../user/register">
                            <i class="icon-link"></i>
                            Update User</a>
                        </li> -->

<sec:authorize access="hasRole('CARD_DEACTIVATE_PRIVILEGE')">

						<li class="${param.deactivate}">
                            <a href="../ev/deactivatecard">
                            <i class="icon-credit-card"></i>
                            Deactivate Card</a>
                        </li>
</sec:authorize>


					</ul>
				</li>
</sec:authorize>




<sec:authorize access="hasAnyRole('EV_USER_CREATE_PRIVILEGE','EV_USER_READ_PRIVILEGE','EV_MERCHANT_CREATE_PRIVILEGE','EV_MERCHANT_READ_PRIVILEGE','EV_DEVICE_CREATE_PRIVILEGE','EV_DEVICE_READ_PRIVILEGE')">
                <li class='start ${param.ev_admin_active_open}'>
					<a href="javascript:;">
					<i class="icon-equalizer"></i>
					<span class="title">EV Administration</span>
					<c:if test="${not empty param.ev_register}">
                        <span class="selected"></span>
                    </c:if>
					<span class='arrow ${param.ev_admin_open}'></span>
					</a>
					<ul class="sub-menu">




<sec:authorize access="hasAnyRole('EV_USER_CREATE_PRIVILEGE','EV_USER_READ_PRIVILEGE')">
					    <li class="${param.ev_register_c}${param.ev_register_ud}${param.ev_register_v}${param.ev_register_cs}">
                            <a href="javascript:;">
                            <i class="icon-globe"></i> EV User <span class="arrow ${param.ev_user_open}"></span>
                            </a>
                            <ul class="sub-menu">
<sec:authorize access="hasRole('EV_USER_CREATE_PRIVILEGE')">
                                <li class='${param.ev_register_c}'>
                                    <a href="../ev/register"><i class="icon-user-follow"></i> Add EV User</a>
                                </li>
</sec:authorize>
<sec:authorize access="hasRole('EV_USER_READ_PRIVILEGE')">
                                <li class='${param.ev_register_v}'>
                                    <a href="../ev/view"><i class="icon-cursor-move"></i> View EV User</a>
                                </li>
</sec:authorize>
                                <!--
                                <li class='${param.ev_register_cs}'>
                                    <a href="../fc/cardstatus"><i class="icon-target"></i> mCash Status</a>
                                </li>
                                -->
                            </ul>
                        </li>
</sec:authorize>



<sec:authorize access="hasAnyRole('EV_MERCHANT_CREATE_PRIVILEGE','EV_MERCHANT_READ_PRIVILEGE')">
					    <li class="${param.ev_register_m_c}${param.ev_register_m_v}">
                            <a href="javascript:;">
                            <i class="icon-credit-card"></i> EV Merchant <span class="arrow ${param.ev_merchant_open}"></span>
                            </a>
                            <ul class="sub-menu">
<sec:authorize access="hasRole('EV_MERCHANT_CREATE_PRIVILEGE')">
                                <li class="${param.ev_register_m_c}">
                                    <a href="../ev/merchantregister">
                                    <i class="icon-user-follow"></i>
                                    Add Merchant</a>
                                </li>
</sec:authorize>
<sec:authorize access="hasRole('EV_MERCHANT_READ_PRIVILEGE')">
                                <li class='${param.ev_register_m_v}'>
                                    <a href="../ev/merchantview"><i class="icon-cursor-move"></i> View EV Merchant</a>
                                </li>
</sec:authorize>
                            </ul>
                        </li>
</sec:authorize>





<sec:authorize access="hasAnyRole('EV_DEVICE_CREATE_PRIVILEGE','EV_DEVICE_READ_PRIVILEGE')">
                        <li class="${param.ev_register_d_c}${param.ev_register_d_v}">
                            <a href="javascript:;">
                            <i class="icon-energy"></i> EV Station <span class="arrow ${param.ev_device_open}"></span>
                            </a>
                            <ul class="sub-menu">
<sec:authorize access="hasRole('EV_DEVICE_CREATE_PRIVILEGE')">
                                <li class="${param.ev_register_d_c}">
                                    <a href="../ev/deviceregister">
                                    <i class="icon-plus"></i>
                                    Add EV station</a>
                                </li>
</sec:authorize>
<sec:authorize access="hasRole('EV_DEVICE_READ_PRIVILEGE')">
                                <li class='${param.ev_register_d_v}'>
                                    <a href="../ev/deviceview"><i class="icon-cursor-move"></i> View EV Station</a>
                                </li>
</sec:authorize>
                            </ul>
                        </li>
</sec:authorize>

					</ul>
				</li>
</sec:authorize>


<!--
<sec:authorize access="hasRole('EV_MYACCOUNT_ACTIVATE')">
                <li class='start ${param.myaccount_active_open}'>
					<a href="javascript:;">
					<i class="icon-notebook"></i>
					<span class="title">My Account</span>
					<c:if test="${not empty param.myaccount}">
                        <span class="selected"></span>
                    </c:if>
					<span class='arrow ${param.myaccount_open}'></span>
					</a>
					<ul class="sub-menu">
						<li class="${param.myaccount_a}">
							<a href="../fc/activate">
							<i class="icon-magic-wand"></i>
							Activate Account</a>
						</li>
					</ul>
				</li>
</sec:authorize>
-->

<sec:authorize access="hasAnyRole('EV_USER_TRANSACTION','USER_TRANSACTION','EV_ACCOUNT_REPORT','POOL_ACCOUNT_REPORT','EV_MERCHANT_TRANSACTION','EV_USER_ACCOUNT_REPORT')">
                <li class='start ${param.reporting_active_open}'>
					<a href="javascript:;">
					<i class="icon-book-open"></i>
					<span class="title">Reports</span>
					<c:if test="${not empty param.reporting}">
                        <span class="selected"></span>
                    </c:if>
					<span class='arrow ${param.reporting_open}'></span>
					</a>
					<ul class="sub-menu">


<sec:authorize access="hasRole('EV_USER_TRANSACTION')">
						<li class="${param.reporting_transaction}">
							<a href="../ev/usertransactionreport">
							<i class="icon-credit-card"></i>
							Transaction Report</a>
						</li>
</sec:authorize>



<sec:authorize access="hasRole('USER_TRANSACTION')">
						<li class="${param.reporting_transaction}">
							<a href="../ev/transactionreport">
							<i class="icon-credit-card"></i>
							Transaction Report</a>
						</li>
</sec:authorize>

<sec:authorize access="hasRole('EV_ACCOUNT_REPORT')">
						<li class="${param.reporting_evaccount}">
							<a href="../ev/evaccountreport">
							<i class="icon-wallet"></i>
							EV Account Report</a>
						</li
</sec:authorize>

<sec:authorize access="hasRole('EV_USER_ACCOUNT_REPORT')">
						<li class="${param.reporting_evaccount}">
							<a href="../ev/evuseraccountreport">
							<i class="icon-wallet"></i>
							EV Account Report</a>
						</li
</sec:authorize>


<sec:authorize access="hasRole('POOL_ACCOUNT_REPORT')">
						<li class="${param.reporting_evpoolaccount}">
							<a href="../ev/evpoolaccountreport">
							<i class="icon-magic-wand"></i>
							EV Pool Account Report</a>
						</li>
</sec:authorize>

<sec:authorize access="hasRole('EV_MERCHANT_TRANSACTION')">
						<li class="${param.reporting_merchant_transaction}">
							<a href="../ev/merchanttransactionreport">
							<i class="icon-credit-card"></i>
                            							Merchant Transaction Report</a>
						</li>
</sec:authorize>


					</ul>
				</li>
</sec:authorize>