<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="tmp/header.jsp" %>
    <h2>List Movies</h2>

    <c:if test="${!empty movieList}">
        <table border="2px">
            <tr>
                <th>Id</th>
                <th>Movie name</th>
                <th>Director</th>
                <th>Country</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            <c:forEach items="${movieList}" var="movie">
                <tr>
                    <td>${movie.id}</td>
                    <td><a href="/movieData/${movie.id}" target="_blank">${movie.movieName}</a></td>
                    <td>${movie.director}</td>
                    <td>${movie.country}</td>
                    <td><a href="<c:url value='/editMovie/${movie.id}'/>">Edit</a></td>
                    <td><a href="<c:url value='/removeMovie/${movie.id}'/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
    </c:if>

<form:form action="/movies/add" modelAttribute="emptyMovie">
    <%--<form:input path="id" readonly="true"/>--%>
    <%--<form:input path="movieName"/>--%>
    <%--<form:input path="director"/>--%>
    <%--<form:input path="country"/>--%>
    <%--<input type="submit">--%>

    <c:if test="${!empty movieName}">
        <form:input path="id" readonly="true"/>
    </c:if>
    <form:input path="movieName"/>
    <form:input path="director"/>
    <form:input path="country"/>
    <c:if test="${!empty movieName}">
        <input type="submit" value="Edit Movie"/>
    </c:if>
    <c:if test="${empty movieName}">
        <input type="submit" value="Add Movie">
    </c:if>
</form:form>


<%@include file="tmp/footer.jsp" %>
