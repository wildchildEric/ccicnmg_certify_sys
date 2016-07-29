<%--
  Created by IntelliJ IDEA.
  User: lizhe
  Date: 16/7/15
  Time: 下午5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.ccicnmg.certify.CertifyApplication"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <i class="fa fa-user"></i>
        </button>
        <button type="button" class="navbar-toggle" data-toggle="offcanvas">
            <i class="fa fa-bars"></i>
        </button>
        <div class="navbar-brand">
            <div id="toggle_nav_div" class="fa fa-bars toggle-left-nav" title="切换菜单栏显示/隐藏"></div>
            <label class="nav-title-system-name">${CertifyApplication.APPLICATION_NAME} | </label>
            <b class="nav-title-page-name"> <t:getAsString name="sub_page_title"/></b>
        </div>
    </div>
    <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a>
                    <i class="fa fa-user"></i>
                    current_user.name
                </a>
            </li>
            <li>
                <a>
                    <span class="label label-danger"><i class="fa fa-sign-out"></i> 登出</span>
                </a>
            </li>
        </ul>
    </div>
</div>