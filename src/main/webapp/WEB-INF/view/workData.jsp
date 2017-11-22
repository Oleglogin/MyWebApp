<%@include file="tmp/header.jsp"%>
${work.user.username}
${work.workTitle}
${work.content}
<div class="container-fluid col-md-3">
    <div class="row">
        <img src="${work.workImg}" alt="img01" class="img-responsive img-thumbnail "/>
    </div>
</div>
${curentUser.username}
<%@include file="tmp/footer.jsp"%>