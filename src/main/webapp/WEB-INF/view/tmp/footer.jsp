
<%--&lt;%&ndash;<script src="../../resources/js/bootstrap.min.js"></script>&ndash;%&gt;--%>
<%--<!-- jquery -->--%>
<%--<script src="../../resources/jquery.js"></script>--%>

<%--<!-- wow script -->--%>
<%--<script src="../../resources/wow/wow.min.js"></script>--%>


<%--<!-- boostrap -->--%>
<%--<script src="../../resources/bootstrap/js/bootstrap.js" type="text/javascript" ></script>--%>

<%--<!-- jquery mobile -->--%>
<%--<script src="../../resources/mobile/touchSwipe.min.js"></script>--%>
<%--<script src="../../resources/respond/respond.js"></script>--%>

<%--<!-- gallery -->--%>
<%--<script src="../../resources/gallery/jquery.blueimp-gallery.min.js"></script>--%>

<%--<!-- custom script -->--%>
<%--<script src="../../resources/script.js"></script>--%>
<!-- Подключаем jQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js" integrity="sha384-alpBpkh1PFOepccYVYDB4do5UnbKysX5WZXm3XxPqe5iKTfUKjNkCk9SaVuEZflJ" crossorigin="anonymous"></script>
<script>

    function updateTotal() {
        var manyy = parseInt(document.getElementById("many").value);
        var yearr = parseInt(document.getElementById("year").value);
        var percentt = parseInt(document.getElementById("percent").value);
        var tryCount = yearr;
        var mount = 0;
        do	{
            var tot = (manyy * percentt / 100) + manyy;
            var manyy = tot;
            tryCount--;
            mount++;
            alert("mount" + mount + "=" + manyy)
        }while (tryCount>0);

        document.getElementById("totall").value = "$" + tot.toFixed(2);
    }
</script>
</body>
</html>