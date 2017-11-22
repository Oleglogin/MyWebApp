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
        </tr>
            <tr>
                <td>${emptyExperience.id}</td>
                <td><a href="/expData/${emptyExperience.id}" target="_blank">${emptyExperience.workExperience}</a></td>
                <td>${emptyExperience.university}</td>
                <td>${emptyExperience.account.id}</td>
            </tr>
    </table>

</div>
<%@include file="tmp/footer.jsp" %>