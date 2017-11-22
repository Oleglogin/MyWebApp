<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp" %>
<div class="container">
    <%--<c:if test="${!empty experianceList}">--%>
        <table class="table">
            <tr>
                <td>ID</td>
                <td>WorkExperience</td>
                <td>University</td>
                <td>Account</td>
                <td>Delete</td>
                <td>Edit</td>
            </tr>
            <c:forEach items="${experienceList}" var="exper">
                <tr>
                    <td>${exper.id}</td>
                    <td>${exper.workExperience}</td>
                    <td>${exper.university}</td>
                    <td>${exper.account.id}</td>
                    <td><a href="<c:url value='/experienceDelete/${exper.id}'/>">Delete</a></td>
                    <td><a href="<c:url value='/experienceEdit/${exper.id}'/>">Edit</a></td>
                </tr>
            </c:forEach>
        </table>
    <%--</c:if>--%>

        <br>
        <br>

    <form:form action="/addExperience" modelAttribute="emptyExperience" method="post">
        <form:input path="id" readonly="true"/>
        <form:input path="workExperience"/>
        <form:input path="university"/>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <input type="submit" value="Ok">
    </form:form></div>
<div class="container">
</div>
<%@include file="tmp/footer.jsp" %>