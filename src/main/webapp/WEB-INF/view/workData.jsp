<%@include file="tmp/header.jsp"%>
<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">Title</th>
        <th width="120">content</th>
        <th width="120">Price</th>
    </tr>
    <tr>
        <td>${work.id}</td>
        <td>${work.bookTitle}</td>
        <td>${work.content}</td>
    </tr>
</table>
<%@include file="tmp/footer.jsp"%>