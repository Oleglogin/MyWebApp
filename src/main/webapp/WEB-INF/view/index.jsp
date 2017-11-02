<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="tmp/header.jsp" %>
<form:form method="POST" modelAttribute="indexform">


                <a><a href="/login"> Sign in</a>
                <a><a href="/registration">Sign up</a>
                <a><a href="/books">Books</a>

                <li><a href="/logout"> Logout</a>

</form:form>
<%@include file="tmp/footer.jsp"%>
