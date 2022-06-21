<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="student" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/studentdb"
                   user="root" password=""/>
<sql:query dataSource="${student}" var="ProgData">
    SELECT Pcode, ProgrammeName from programme;
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Student List</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="body">
            <%@include file= "header.jsp"%><%@include file= "nav.jsp"%>
            <div id="data">
                <h4>View Students by Programme</h4>
                <form action="listResult.jsp" method="POST">
                    Select Programme : <select class="" name="Pcode">
                        <c:forEach var="row" items="${ProgData.rows}">
                            <option value="<c:out value="${row.Pcode}"/>">
                                <c:out value="${row.ProgrammeName}"/>
                            </option>
                        </c:forEach>
                    </select>
                    <input type="submit" value="Search">
                </form>
            </div>
            <%@include file= "footer.jsp"%>
        </div>
    </body>
</html>
