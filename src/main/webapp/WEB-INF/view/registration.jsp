<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp" %>

<table class="table">
    <tr>
        <td>Login</td>
        <td>Password</td>
        <td>Delete</td>
        <td>Edit</td>
    </tr>
    <c:forEach items="${userList}" var="us">
        <tr>
            <td>${us.username}</td>
            <td>${us.password}</td>
            <td><a href="<c:url value='/userRemove/${us.id}'/>">Delete</a></td>
            <td><a href="<c:url value='/userEdit/${us.id}'/>">Edit</a></td>
        </tr>
    </c:forEach>
</table>



<form:form action="saveUserSpringForm" method="POST" modelAttribute="emptyUser" >
            <form:input path="id" readonly="true"/>
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


