<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="tmp/header.jsp"%>
<form:form modelAttribute="emptyAccount" action="saveAccount" method="post" enctype="multipart/form-data">
    <form:input type="text" path="firstName" placeholder="Enter first name"/>
    <form:input type="text" path="lastName"  placeholder="Enter last name"/>
    <form:input type="text" path="country"  placeholder="Enter country"/>
    <form:input type="text" path="city"  placeholder="Enter city"/>
    <form:input type="email" path="email" placeholder="Enter email"/>
    <input type="file" name="avatar" formenctype="multipart/form-data"/>
    <br>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <input type="submit" value="Ok">
</form:form>

<%--<form action="saveAccount" method="post">--%>
    <%--<input type="text" name="firsName"  placeholder="firstName">--%>
    <%--<br>--%>
    <%--<input type="text" name="lastName"  placeholder="lastName">--%>
    <%--<br>--%>
    <%--<input type="text" name="country"  placeholder="country">--%>
    <%--<br>--%>
    <%--<input type="text" name="city"  placeholder="city">--%>
    <%--<input type="text" name="email"  placeholder="email">--%>
    <%--<br>--%>
    <%--<input type="file" name="avatar"  formenctype="multipart/form-data"/>--%>
    <%--<br>--%>
    <%--<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>--%>
    <%--<input type="submit" value="Ok">--%>
<%--</form>--%>

<%@include file="tmp/footer.jsp"%>