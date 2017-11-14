<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="tmp/header.jsp" %>
<div class="container">
    <a href="/login"> Sign in</a>
    <a href="/registration">Sign up</a>
    <a href="/books">Books</a>
    <a href="/ideas">Ideas</a>
    <a href="/movies">Movies</a>
    <a href="/work">Work</a>
    <a href="/admin">Admin</a>

    <a href="/logout"> Logout</a>

    <button type="button" class="btn btn-primary" data-toggle="popover" title="massage"
            data-content="yes boot worked">Give me a cursor to me</button>

    <%@ page session="true" %>
    <% int a = 5; %>

</div>






<%@include file="tmp/footer.jsp"%>
