<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp" %>



<form:form action="saveUserSpringForm" method="POST" modelAttribute="emptyUser" >
            <form:input type="text" path="username"  placeholder="Enter login"/>
            <form:errors path="username" class="cs"/>

            <form:input type="password" path="password" placeholder="Create password"/>
            <form:errors path="password" class="cs"/>

            <form:input type="password" path="confirmPassword" placeholder="Confirm your password"/>
            <form:errors path="confirmPassword" class="cs"/>
    <br>
    <input type="submit" value="Ok">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form:form>
<%@include file="tmp/footer.jsp" %>


