<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>


        <header class="page-header">
            <nav class="navbar" role="navigation">
                <div class="container-fluid">
                    <div class="havbar-header">
                        <!-- BEGIN LOGO -->
                        <a id="index" class="navbar-brand" href="start.html">
                            <!--<img src="https://cdn.mobitel.lk/assets6/layouts/layout6/img/logo.png" alt="Logo"> --> </a>
                        <!-- END LOGO -->
                        <!-- BEGIN TOPBAR ACTIONS -->
                        <div class="topbar-actions">
                            <!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
                            <form class="search-form" action="extra_search.html" method="GET">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search here" name="query">
                                            <span class="input-group-btn">
                                                <a href="javascript:;" class="btn submit">
                                                    <i class="fa fa-search"></i>
                                                </a>
                                            </span>
                                </div>
                            </form>
                            <!-- END HEADER SEARCH BOX -->
                            <!-- BEGIN GROUP NOTIFICATION -->

                            <!-- END GROUP NOTIFICATION -->
                            <!-- BEGIN USER PROFILE -->
                            <div class="btn-group-img btn-group">
                                <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <img src="https://cdn.mobitel.lk/assets6/layouts/layout5/img/avatar2.jpg" alt="">  </button>
                                <ul class="dropdown-menu-v2" role="menu">
                                    <li>
                                        <a href="../j_spring_security_logout">
                                            <i class="icon-key"></i> Log Out </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- END USER PROFILE -->
                        </div>
                        <!-- END TOPBAR ACTIONS -->
                    </div>
                </div>
                <!--/container-->
            </nav>
        </header>