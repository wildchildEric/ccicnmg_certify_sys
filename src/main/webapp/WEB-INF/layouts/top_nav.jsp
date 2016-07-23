<%--
  Created by IntelliJ IDEA.
  User: lizhe
  Date: 16/7/15
  Time: 下午5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <i class="fa fa-user"></i>
        </button>
        <button type="button" class="navbar-toggle" data-toggle="offcanvas">
            <i class="fa fa-bars"></i>
        </button>
        <a class="navbar-brand">
            <div>
                <div id="toggle_nav_div" class="fa fa-bars toggle-left-nav" title="切换菜单栏显示/隐藏"></div>
                <label class="nav-title-system-name">Constants::SYSTEM_NAME | </label>
                <b class="nav-title-page-name"> page_title </b>
            </div>
        </a>
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