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
        <td>${emptyMovie.id}</td>
        <td>${emptyMovie.movieName}</td>
        <td>${emptyMovie.director}</td>
        <td>${emptyMovie.country}</td>
    </tr>
</table>
<%@include file="tmp/footer.jsp"%>
