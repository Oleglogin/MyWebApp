<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="tmp/header.jsp"%>
<%--<c:if test="${!empty productlist}">--%>
    <%--<table class="tg">--%>
        <%--<tr>--%>
            <%--<th>ID</th>--%>
            <%--<th>Product</th>--%>
            <%--<th>Category</th>--%>
            <%--<th>Edit</th>--%>
            <%--<th>Delete</th>--%>
        <%--</tr>--%>
        <%--<c:forEach items="${productlist}" var="product">--%>
            <%--<tr>--%>
                <%--<td>${product.id}</td>--%>
                <%--<td>${product.productName}</td>--%>
                <%--<td>${product.category}</td>--%>
                <%--<td><a href="<c:url value='/editProduct/${product.id}'/>">Edit</a></td>--%>
                <%--<td><a href="<c:url value='/removeProduct/${product.id}'/>">Delete</a></td>--%>
            <%--</tr>--%>


        <%--</c:forEach>--%>
    <%--</table>--%>
<%--</c:if>--%>

<%--<h2>Add product</h2>--%>

<%--<form:form action="/products/add" modelAttribute="emptyProduct">--%>
                <%--<form:input path="id" readonly="true"/>--%>
                <%--<form:input path="productName"/>--%>

                <%--<form:input path="category"/>--%>

                <%--<input type="submit">--%>


<%--</form:form>--%>

<c:if test="${!empty productlist}">
    <table>
        <tr>
            <td>Id</td>
            <td>Product</td>
            <td>Category</td>
            <td>Edit</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${productlist}" var="prod">
            <tr>
                <td>${prod.id}</td>
                <td>${prod.productName}</td>
                <%--<td><a href="/bookdfffata/${book.id}" target="_blank">${book.bookTitle}</a></td>--%>
                <%--<td><a href="/productData/${prod.id}" target="_blank">${prod.prodectName}</a></td>--%>
                <td>${prod.category}</td>
                <td><a href="<c:url value='/productsEdit/${prod.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/productsRemove/${prod.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<form:form action="/products/add" modelAttribute="emptyProduct">
    <form:input path="id" readonly="true"/>
    <form:input path="productName"/>
    <form:input path="category"/>
    <input type="submit">
</form:form>



<%@include file="tmp/footer.jsp"%>