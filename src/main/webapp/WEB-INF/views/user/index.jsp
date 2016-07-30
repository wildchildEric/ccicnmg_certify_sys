<%--
  Created by IntelliJ IDEA.
  User: lizhe
  Date: 16/7/30
  Time: 下午1:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="common" tagdir="/WEB-INF/tags/common" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>

<ol class="breadcrumb"><span class="pretext">当前位置：</span>
    <li><a href="/">首页</a></li>
    <li class="active">用户列表</li>
</ol>
<common:second_level_navigation path="${s:mvcUrl('UC#show').arg(0,\"123\").build()}" icon="fa-user" title="Get Person"/>

<h1>index</h1>
