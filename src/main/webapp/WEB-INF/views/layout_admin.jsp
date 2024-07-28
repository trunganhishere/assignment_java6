<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="layout/_navbar_admin.jsp"/>

<div class="main container mt-3">
    <jsp:include page="${viewName}.jsp"/>
</div>

<jsp:include page="layout/_footer.jsp"/>