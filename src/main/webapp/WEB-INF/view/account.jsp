<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@include file="tmp/header.jsp"%>
    <form:input type="text" path="firstName" placeholder="Enter first name"/>

    <form:input type="text" path="lastName"  placeholder="Enter last name"/>


    <input type="file" name="avatar" formenctype="multipart/form-data" id="exampleFormControlFile1">

    <form:input type="email" path="email" placeholder="Enter email"/>
<%@include file="tmp/footer.jsp"%>