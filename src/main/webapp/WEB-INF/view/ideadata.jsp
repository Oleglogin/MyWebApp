<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>
<table>
    <tr>
        <th>id</th>
        <th>ideaTitle</th>
        <th>content</th>
    </tr>
    <tr>
        <td>${idea.id}</td>
        <td>${idea.ideaTitle}</td>
        <td>${idea.content}</td>
    </tr>
</table>
<%@include file="tmp/footer.jsp"%>
