<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<!-- Header Starts -->

<!-- #Header Starts -->
<%--<div id="works"  class="grid container-fluid">--%>
        <%--<c:forEach items="${workList}" var="work">--%>
            <%--<figure class="effect-oscar">--%>
                <%--<h3>${work.user.username}</h3>--%>
                <%--<img src="${work.workImg}" alt="img01"/>--%>
                <%--<figcaption>--%>
                    <%--<h2><a href="/workData/${work.id}" target="_blank">${work.workTitle}</a></h2>--%>
                    <%--<p>${work.content}<br>--%>
                        <%--<a href="<c:url value='/workRemove/${work.id}'/>">Delete</a>--%>
                        <%--<a href="<c:url value='/workEdit/${work.id}'/>">Edit</a>--%>
                        <%--<a href="workData/${work.id}" target="_blank">View more</a>--%>
                <%--</figcaption>--%>
            <%--</figure>--%>
        <%--</c:forEach>--%>
<%--</div>--%>
hello <h2>${currentUser.id} <a href="myWorks/${emptyWork.id}" target="_blank">Show ${currentUser.username} works</a></h2>

<div class="container-fluid">
    <div class="row">
        <c:forEach items="${workList}" var="work">
                <div class="col-md-3" >
                    <h3><a href="/workData/${work.id}" target="_blank">${work.workTitle}</a></h3>
                    <img src="${work.workImg}" alt="img01" class="img-responsive img-thumbnail"/>
                    <div class="container">
                        <h4><a href="/userWork/${work.id}" target="_blank">${work.user.username}</a></h4>
                        <p>${work.content}</p>
                    </div>

                        <a href="<c:url value='/workRemove/${work.id}'/>">Delete</a>
                        <a href="<c:url value='/workEdit/${work.id}'/>">Edit</a>
                        <a href="workData/${work.id}" target="_blank">View more</a>
                </div>
        </c:forEach>
    </div>
</div>




<div id="contact" class="spacer">
    <div class="container contactform center">
        <div class="row wowload fadeInLeftBig">
            <h2 class="text-center  wowload fadeInUp">Add work</h2>
            <div class="col-sm-6 col-sm-offset-3 col-xs-12">
                <form:form action="work/add" method="post" modelAttribute="emptyWork" enctype="multipart/form-data">
                    <form:input path="id" readonly="true"/>
                    <form:input path="workTitle"/>
                    <form:input path="content"/>
                    <input type="file" name="workImg" formenctype="multipart/form-data">
                    <input type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"></i>
                </form:form>
            </div>
        </div>
    </div>
</div>
<%@include file="tmp/footer.jsp" %>