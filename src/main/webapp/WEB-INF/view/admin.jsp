<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="tmp/header.jsp"%>
<c:if test="${!empty usersList}">
    <table class="table">
        <tr>
            <td>Login</td>
            <td>Password</td>
            <td>Delete</td>
        </tr>
        <c:forEach items="${usersList}" var="user">
            <tr>
                <td>${user.username}</td>
                <td>${user.password}</td>
                <td><a href="<c:url value='/userRemove/${user.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>

    <div class="frame2">
        <form name="orderform2" action="bank.php" method="post">
            <div class="field">вкажіть суму вкладу
                <input type="text" id="many" name="many" value=""/>
            </div>
            <div class="field"> вкажіть кількість місяців депозиту
                <input type="text" id="year" name="year" value=""/>
            </div>
            <div class="field"> вкажіть місячний процент
                <input type="text" id="percent" name ="percent" value=""/>
            </div>
            <div class="field">
                <input type="button" value="порахувати загальну суму" onclick="updateTotal(this.form);">
            </div>
            <div class="field">загальна сума
                <input type="text" id="totall" name="totall" value=""/>
            </div>
        </form>
    </div>
</c:if>
<%@include file="tmp/footer.jsp"%>