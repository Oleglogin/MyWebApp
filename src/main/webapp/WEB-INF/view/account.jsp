<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="tmp/header.jsp"%>
<div class="container">
    <c:if test="${!empty usersList}">
        <table class="table">
            <tr>
                <td>Login</td>
                <td>Password</td>
                <td>Delete</td>
            </tr>
            <c:forEach items="${usersList}" var="user">
                <tr>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td><a href="<c:url value='/userRemove/${user.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>
    <br>
    <br>
    <br>
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

    <br>
    <br>
    <br>

    <table class="table">
        <tr>
            <td>First Name</td>
            <td>Last Name</td>
            <td>country</td>
            <td>city</td>
            <td>email</td>
            <td>ava</td>
            <td>user</td>
            <td>Edit</td>
        </tr>
        <c:forEach items="${accountList}" var="account">
            <tr>
                <td>${account.firstName}</td>
                <td>${account.lastName}</td>
                <td>${account.country}</td>
                <td>${account.city}</td>
                <td>${account.email}</td>
                <td><img src="${account.avatar}"width="30" height="30" class="rounded-circle" alt=""></td>
                <td>${currentUser.username}</td>
                <td><a href="<c:url value='/editAccount/${account.id}'/>">Edit</a> </td>
            </tr>
        </c:forEach>
    </table>
</div>


<a><a href="/index">Main</a>
<%@include file="tmp/footer.jsp"%>