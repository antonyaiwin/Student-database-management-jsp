
<div class="nav" id="nav">
    <a href="home.jsp">Home</a>
    <a href="addStudent.jsp">Add Student</a>
    <a href="programmes.jsp">Programmes</a>
    <a href="list.jsp">View Students</a>
</div>
<script type="text/javascript">
    var nav = document.getElementById('nav'),
            anchor = nav.getElementsByTagName('a'),
            current = window.location.href;
    for (var i = 0; i < anchor.length; i++) {
        if (anchor[i].href === current) {
            anchor[i].className = "active";
        }
    }
</script>
