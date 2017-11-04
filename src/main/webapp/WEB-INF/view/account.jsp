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

<a><a href="/books">Books</a>
<%@include file="tmp/footer.jsp"%>