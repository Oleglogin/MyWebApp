<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="tmp/header.jsp"%>

<a><a href="/index">Back to main menu</a>

    <br/>
    <br/>

    <h1>Idea List</h1>

    <table>
        <tr>
            <th>id</th>
            <th>ideaTitle</th>
            <th>content</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listIdeas}" var="idea">
            <tr>
                <td>${idea.id}</td>
                <td><a href="/ideadata/${idea.id}" target="_blank">${idea.ideaTitle}</a></td>
                <td>${idea.content}</td>
                <td><a href="<c:url value='/editIdea/${idea.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/removeIdea/${idea.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>



    <h1>Add a Idea</h1>


    <form:form action="/ideas/add" commandName="idea">
    <table>
        <c:if test="${!empty idea.ideaTitle}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="ideaTitle">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="ideaTitle"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="content">
                    <spring:message text="Content"/>
                </form:label>
            </td>
            <td>
                <form:input path="content"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty idea.ideaTitle}">
                    <input type="submit"
                           value="<spring:message text="Edit Idea"/>"/>
                </c:if>
                <c:if test="${empty idea.ideaTitle}">
                    <input type="submit"
                           value="<spring:message text="Add Idea"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
    </form:form>

<%@include file="tmp/footer.jsp"%>
