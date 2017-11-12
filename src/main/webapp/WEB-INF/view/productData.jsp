<%@include file="tmp/header.jsp"%>

<table>
    <tr>
        <td>Id</td>
        <td>Product</td>
        <td>Category</td>
    </tr>
    <tr>
        <td>${prod.id}</td>
        <td>${prod.productName}</td>
        <td>${prod.category}</td>
    </tr>
</table>

<%@include file="tmp/footer.jsp"%>