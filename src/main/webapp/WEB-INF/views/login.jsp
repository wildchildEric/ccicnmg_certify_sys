<%--
  Created by IntelliJ IDEA.
  User: lizhe
  Date: 16/7/24
  Time: 下午2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>

<c:url value="/login" var="loginUrl"/>

<div class="container">
    <div style="margin-top:50px;" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">登录</div>
            </div>
            <div style="padding-top:30px" class="panel-body">
                <form action="${loginUrl}" method="post" role="form" class="form-horizontal">

                    <c:if test="${param.error != null}">
                        <div class="alert alert-danger alert-dismissible">
                            <button class="close" data-dismiss="alert">×</button>
                            <i class="fa-fw fa fa-frown-o"></i>
                            Invalid username and password.
                        </div>
                    </c:if>

                    <c:if test="${param.logout != null}">
                        <div class="alert alert-success alert-dismissible">
                            <button class="close" data-dismiss="alert">×</button>
                            <i class="fa-fw fa fa-info"></i>
                            You have been logged out.
                        </div>

                    </c:if>

                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="email" id="username" name="username" autofocus="true" class="form-control"
                               placeholder="邮箱">
                    </div>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" id="password" name="password" autocomplete="off" class="form-control"
                               placeholder="密码">
                    </div>
                    <%--<div class="input-group">--%>
                    <%--<div class="checkbox">--%>
                    <%--<label>--%>
                    <%--<input type="checkbox"> 记住我--%>
                    <%--</label>--%>
                    <%--</div>--%>
                    <%--</div>--%>
                    <div style="margin-top:10px" class="form-group">
                        <div class="col-sm-12 controls">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-primary btn-block">登陆</button>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12 control">
                            <div style="border-top: 1px solid#888; padding-top:15px; font-size:85%">
                                <div class="pull-right">
                                    <%--<%= render 'devise/shared/links' %>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


