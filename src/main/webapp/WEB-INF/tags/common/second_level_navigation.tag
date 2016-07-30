<%@ tag body-content="empty" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
<%@ attribute name="path" required="true" %>
<%@ attribute name="title" required="true" %>
<%@ attribute name="icon" required="true" %>
<%@ attribute name="highlight_path" required="false" %>
<%
    String current_path = (String) request
            .getAttribute("org.springframework.web.servlet.HandlerMapping.pathWithinHandlerMapping");
    boolean is_active = false;
    if (highlight_path == null) {
        if (current_path.indexOf(path) == 0) {
            is_active = true;
        }
    } else {
        if (current_path.indexOf(path) == 0 || current_path.indexOf(current_path) == 0) {
            is_active = true;
        }
    }

%>
<li class="<%= is_active? "active" : ""%>">
    <a href="${path}">
        <i class="fa fa-2x fa-fw ${icon}"></i> ${title}
    </a>
</li>
