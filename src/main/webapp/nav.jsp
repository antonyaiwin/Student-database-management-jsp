
<div class="nav" id="nav">
<!--  <ul>
    <li>-->
      <a href="home.jsp">Home</a>
    <!--</li>-->
    <!--<li>-->
      <a href="addStudent.jsp">Add Student</a>
    <!--</li>-->
    <!--<li>-->
      <a href="programmes.jsp">Programmes</a>
    <!--</li>-->
    <!--<li>-->
      <a href="list.jsp">View Students</a>
    <!--</li>-->
  <!--</ul>-->
</div>
<script type="text/javascript">
navLoaded();
function navLoaded() {
  var nav = document.getElementById('nav'),
      anchor = nav.getElementsByTagName('a'),
      current = window.location.href;
      for (var i = 0; i < anchor.length; i++) {
      if(anchor[i].href == current) {
          anchor[i].className = "active";
      }
  }
}
</script>
