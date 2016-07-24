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

<div class="container">
    <div style="margin-top:50px;" class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="panel-title">登录</div>
            </div>
            <div style="padding-top:30px" class="panel-body">
                <form class="form-horizontal" ,role="form">
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="email" autofocus="true" class="form-control" placeholder="邮箱">
                    </div>
                    <div style="margin-bottom: 25px" class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" autocomplete="off" class="form-control" placeholder="密码">
                    </div>
                    <div class="input-group">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox"> 记住我
                            </label>
                        </div>
                    </div>
                    <div style="margin-top:10px" class="form-group">
                        <!-- Button -->
                        <div class="col-sm-12 controls">
                            <input type="submit" name="登陆" class="btn btn-primary btn-block">
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


