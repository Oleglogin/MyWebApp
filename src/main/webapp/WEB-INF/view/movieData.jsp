<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>
<table border="2px">
    <tr>
        <th>id</th>
        <th>movieName</th>
        <th>director</th>
        <th>country</th>
    </tr>
    <tr>
        <td>${movie.id}</td>
        <td>${movie.movieName}</td>
        <td>${movie.director}</td>
        <td>${movie.country}</td>
    </tr>
</table>
<%@include file="tmp/footer.jsp"%>
