<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="tmp/header.jsp"%>

<!-- Header Starts -->
<div class="navbar-wrapper">
    <div class="container">

        <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="top-nav">
            <div class="container">
                <div class="navbar-header">
                    <!-- Logo Starts -->
                    <a class="navbar-brand" href="#home"><img src="images/logo.png" alt="logo"></a>
                    <!-- #Logo Ends -->


                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                </div>


                <!-- Nav Starts -->
                <div class="navbar-collapse  collapse">
                    <ul class="nav navbar-nav navbar-right scroll">
                        <li class="active"><a href="#works">Home</a></li>
                        <li ><a href="#about">About</a></li>
                        <li ><a href="#partners">Partners</a></li>
                        <li ><a href="#contact">Contact</a></li>
                    </ul>
                </div>
                <!-- #Nav Ends -->

            </div>
        </div>

    </div>
</div>
<!-- #Header Starts -->
<div id="works"  class=" clearfix grid">

        <c:forEach items="${workList}" var="work">
                        <figure class="effect-oscar  wowload fadeIn" style="background: rosybrown">
                            <img src="${work.workImg}" alt="img01"/>
                            <h3>${work.user.username}</h3>
                            <figcaption>
                                <h2><a href="/workData/${work.id}" target="_blank">${work.workTitle}</a></h2>
                                <p>${work.content}<br>
                                    <a href="<c:url value='/workRemove/${work.id}'/>">Delete</a>
                                    <a href="<c:url value='/workEdit/${work.id}'/>">Edit</a>
                                    <a href="/workData/${work.id}" target="_blank">View more</a>
                            </figcaption>
                        </figure>
        </c:forEach>
</div>
<div id="contact" class="spacer">
    <div class="container contactform center">
        <h2 class="text-center  wowload fadeInUp">Add work</h2>
        <div class="row wowload fadeInLeftBig">
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