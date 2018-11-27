<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
    uri="http://www.springframework.org/security/tags"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isELIgnored="false" %>
<fmt:setBundle basename="messages" />
<%@ page session="true"%>

                            <li class="nav-item start ">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-home"></i>
                                    <span class="title">Dashboard</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item start ">
                                        <a href="index.html" class="nav-link ">
                                            <i class="icon-bar-chart"></i>
                                            <span class="title">Dashboard</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>

<sec:authorize access="hasRole('USER_C_PRIVILEGE')">
                            <li class="nav-item start  ${param.register_active_open}">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-users"></i>
                                    <span class="title">Administration</span>
                                    <c:if test="${not empty param.register}">
                                        <span class="selected"></span>
                                    </c:if>
                                    <span class='arrow ${param.register_open}'></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item start ${param.register_c}">
                                        <a href="../user/register" class="nav-link ">
                                            <i class="icon-user"></i>
                                            <span class="title">Add User</span>
                                            <c:if test="${not empty param.register_c}">
                                                <span class="selected"></span>
                                            </c:if>
                                        </a>
                                    </li>
                                    <li class="nav-item start ${param.register_ud}">
                                        <a href="../user/register" class="nav-link ">
                                            <i class="icon-link"></i>
                                            <span class="title">Update User</span>
                                            <c:if test="${not empty param.register_ud}">
                                                <span class="selected"></span>
                                            </c:if>
                                        </a>
                                    </li>
                                    <!--<li class="nav-item start ${param.register_cs}">
                                        <a href="../user/register" class="nav-link ">
                                            <i class="icon-target"></i>
                                            <span class="title">mCash Status</span>
                                            <c:if test="${not empty param.register_cs}">
                                                <span class="selected"></span>
                                            </c:if>
                                        </a>
                                    </li>-->
                                </ul>
                            </li>
</sec:authorize>

<sec:authorize access="hasRole('USER_C_PRIVILEGE')">
                <li class="nav-item ${param.ev_admin_active_open}">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-equalizer"></i>
                        <span class="title">EV Administration</span>
                        <c:if test="${not empty param.ev_register}">
                            <span class="selected"></span>
                        </c:if>
                        <span class="arrow ${param.ev_admin_open}"></span>
                    </a>
                    <ul class="sub-menu ">
                        <li class="nav-item ${param.ev_register_c}${param.ev_register_ud}${param.ev_register_v}${param.ev_register_cs}">
                            <a href="../ev/view" target="_blank" class="nav-link">
                                <i class="icon-globe"></i> EV User
                                <span class="arrow nav-toggle ${param.ev_user_open}"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class='nav-item ${param.ev_register_c}'>
                                    <a class="nav-link" href="../ev/register"><i class="icon-user-follow"></i> Add EV User</a>
                                </li>
                                <li class='nav-item ${param.ev_register_v}'>
                                    <a class="nav-link" href="../ev/view"><i class="icon-cursor-move"></i> View EV User</a>
                                </li>
                                <li class='nav-item ${param.ev_register_cs}'>
                                    <a class="nav-link" href="../ev/cardstatus"><i class="icon-target"></i> mCash Status</a>
                                </li>
                            </ul>
                        </li>

                        <li class="${param.ev_register_m_c}${param.ev_register_m_v}">
                            <a href="../ev/merchantview" target="_blank" class="nav-link">
                            <i class="icon-credit-card"></i> EV Merchant <span class="arrow nav-toggle ${param.ev_merchant_open}"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item ${param.ev_register_m_c}">
                                    <a class="nav-link" href="../ev/merchantregister"><i class="icon-user-follow"></i> Add Merchant</a>
                                </li>
                                <li class='nav-item ${param.ev_register_m_v}'>
                                    <a class="nav-link" href="../ev/merchantview"><i class="icon-cursor-move"></i> View EV Merchant</a>
                                </li>
                            </ul>
                        </li>
                        <li class="${param.ev_register_d_c}${param.ev_register_d_v}">
                            <a href="javascript:;">
                            <i class="icon-energy"></i> EV Station <span class="arrow nav-toggle ${param.ev_device_open}"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item ${param.ev_register_d_c}">
                                    <a class="nav-link" href="../ev/deviceregister"><i class="icon-plus"></i> Add EV station</a>
                                </li>
                                <li class='nav-item ${param.ev_register_d_v}'>
                                    <a class="nav-link" href="../ev/deviceview"><i class="icon-cursor-move"></i> View EV Station</a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
</sec:authorize>


<sec:authorize access="hasRole('EV_MYACCOUNT_ACTIVATE')">
                            <li class="nav-item start  ${param.myaccount_active_open}">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="icon-notebook"></i>
                                    <span class="title">My Account</span>
                                    <c:if test="${not empty param.myaccount}">
                                        <span class="selected"></span>
                                    </c:if>
                                    <span class='arrow ${param.myaccount_open}'></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item start ${param.myaccount_a}">
                                        <a href="../ev/activate" class="nav-link ">
                                            <i class="icon-magic-wand"></i>
                                            <span class="title">Activate Account</span>
                                            <c:if test="${not empty param.myaccount_a}">
                                                <span class="selected"></span>
                                            </c:if>
                                        </a>
                                    </li>
                                </ul>
                            </li>
</sec:authorize>


