<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../main/webapp/WEB-INF/views/layout/_navbar_admin.jsp"%>

<div class="container mt-3">
    <jsp:include page="${viewName}.jsp"/>
</div>

<%@include file="../main/webapp/WEB-INF/views/layout/_footer.jsp"%>