<%@include file="tmp/header.jsp"%>
<div id="works"  class=" clearfix grid">
    <figure class="effect-oscar  wowload fadeIn" style="background: rosybrown">
        <img src="${work.workImg}" alt="img01"/>
        <figcaption>
            <h2><a href="/workData/${work.id}" target="_blank">${work.workTitle}</a></h2>
            <p>${work.content}<br>

        </figcaption>
    </figure>
</div>
<%@include file="tmp/footer.jsp"%>