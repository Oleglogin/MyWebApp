<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="tmp/header.jsp" %>
<div class="container">
    <a href="/login"> Sign in</a>
    <a href="/registration">Sign up</a>
    <a href="/books">Books</a>
    <a href="/ideas">Ideas</a>
    <a href="/experience">experience</a>
    <a href="/work">Work</a>
    <a href="/admin">Admin</a>

    <a href="/logout"> Logout</a>

    <nav class="navbar navbar-light bg-light ">
        <a class="navbar-item mr-auto ml-3" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample"><span class="oi oi-cog"></span></a>
        <a class="navbar-brand ml-auto mr-auto" href="#">AIM</a>
        <span class="navbar-text ml-auto mr-3">
      	Hello, <b>${currentUser.username}</b>
        </span>
        <a class="navbar-item mr-3">
            <c:if test="${currentUser.avatar != null}">
                <img src="${currentUser.avatar}" width="30" height="30" class="rounded-circle" alt="">
            </c:if>
            <c:if test="${currentUser.avatar == null}">
                <img src="/resources/img/avatar.png" width="30" height="30" class="rounded-circle" alt="">
            </c:if>
        </a>
    </nav>

    <button type="button" class="btn btn-primary" data-toggle="popover" title="massage"
            data-content="yes boot worked">Give me a cursor to me</button>

    hello <h2>${currentUser.id} <a href="myWorks/${emptyWork.id}" target="_blank">Show ${currentUser.username} works</a></h2>
    hello <h2>${currentUser.id} <a href="/work">Show all works</a></h2>
    <%@ page session="true" %>
    <% int a = 5; %>

</div>






<%@include file="tmp/footer.jsp"%>
