<%--
  Created by IntelliJ IDEA.
  User: lizhe
  Date: 16/7/15
  Time: 下午5:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="com.ccicnmg.certify.CertifyApplication" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
    <!-- WARNING: for iOS 7, remove the width=device-width and height=device-height attributes. See https://issues.apache.org/jira/browse/CB-4323 -->
    <meta name="viewport"
          content="user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1, width=device-width, height=device-height, target-densitydpi=device-dpi"/>
    <title><t:getAsString name="sub_page_title"/> | ${CertifyApplication.APPLICATION_NAME}</title>
    <!--stylesheets-->
    <link href="<c:url value="/assets/public/css/vendor.css"/>" rel="stylesheet">
    <link href="<c:url value="/assets/public/css/application.css"/>" rel="stylesheet">
    <!--javascripts-->
    <script src="<c:url value="/assets/public/js/node_modules.js"/>"></script>
    <script src="<c:url value="/assets/public/js/vendor.js"/>"></script>
    <script src="<c:url value="/assets/public/js/application.js"/>"></script>
    <script>require('javascripts/application')</script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<img src="<c:url value="/assets/public/images/ajax-loader.gif"/>" id="loading-indicator"/>
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
    <t:insertAttribute name="top_nav"/>
</div>

<div class="container-fluid" style="margin: 20px 10px 10px 10px;">
    <div class="row row-offcanvas row-offcanvas-left">
        <div class="col-sm-3 col-md-2 sidebar">
            <t:insertAttribute name="sidebar"/>
        </div>
        <div id="main_content_div" class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">
            <%--<%= render 'layouts/flash' %>--%>
            <%--<%= breadcrumbs style: :bootstrap, pretext: '当前位置：', display_single_fragment: true %>--%>
            <t:insertAttribute name="main_content"/>
            <%--<%= debug_tag :html %>--%>
        </div>
    </div>
</div>
</body>
</html>
