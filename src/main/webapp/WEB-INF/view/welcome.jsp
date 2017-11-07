<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp" %>


<table>
    <tr>
        <th>id</th>
        <th>email</th>
        <th>firstName</th>
        <th>lastName</th>
        <th>avatar</th>
        <th>country</th>
        <th>city</th>
        <th>user</th>
    </tr>
    <c:forEach items="${accountlist}" var="emptyAccount">
        <tr>
            <th>${currentUser.id}</th>
            <th>${currentUser.email}</th>
            <th>${currentUser.firstName}</th>
            <th>${currentUser.lastName}</th>
            <th>${currentUser.avatar}</th>
            <th>${currentUser.country}</th>
            <th>${currentUser.city}</th>
            <th>${currentUser.user}</th>
        </tr>
    </c:forEach>


</table>
<%@include file="tmp/footer.jsp" %>