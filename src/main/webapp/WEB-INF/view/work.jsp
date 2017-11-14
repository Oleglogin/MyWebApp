<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<!-- Header Starts -->
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Menu</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">ARTStudio</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/index">main</a></li>
                <li><a href="/index">main</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/index">Main</a></li>
                        <li><a href="/account">Account</a></li>
                        <li><a href="/books">Book</a></li>
                        <li class="divider"></li>
                        <li><a href="/login">Sign in</a></li>
                        <li class="divider"></li>
                        <li><a href="/registration">Sign up</a></li>
                    </ul>
                </li>
            </ul>
            <form class="navbar-form navbar-left" role="search">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Поиск">
                </div>
                <button type="submit" class="btn btn-default">send</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/index">main</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="/index">Main</a></li>
                        <li><a href="/account">Account</a></li>
                        <li><a href="/books">Book</a></li>
                        <li class="divider"></li>
                        <li><a href="/login">Sign in</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="dropdown">
    <button class="btn btn-info dropdown-toggle" data-toggle="dropdown">Список <span class="caret"></span></button>
    <ul class="dropdown-menu">
        <li class="dropdown-header">Заголовок 1</li>
        <li><a href="#">CSS</a></li>
        <li class="disabled"><a href="#">HTML</a></li>
        <li><a href="#">jQuery</a></li>
        <li class="divider"></li>
        <li class="dropdown-header">Заголовок 2</li>
        <li><a href="#">Javascript</a></li>
    </ul>
</div>
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


<div class="container-fluid">
    <div class="row">
        <c:forEach items="${workList}" var="work">
                <div class="col-md-3" >
                    <h3><a href="/workData/${work.id}" target="_blank">${work.workTitle}</a></h3>
                    <img src="${work.workImg}" alt="img01" class="img-responsive img-thumbnail"/>
                    <div class="container">
                        <h4>${work.user.username}</h4>
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