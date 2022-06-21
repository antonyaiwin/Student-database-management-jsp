<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="student" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/studentdb"
                   user="root" password=""/>
<sql:query dataSource="${student}" var="ProgData">
    SELECT * from programme;
</sql:query>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title></title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="body">
            <%@include file= "header.jsp"%><%@include file= "nav.jsp"%>
            <div id="data">
                <h4>Programme Details</h4>
                <table class="table">
                    <!-- column headers -->
                    <tr>
                        <th>Programme Code</th>
                        <th>Programme Name</th>
                        <th>Duration</th>
                        <th>Fee</th>
                    </tr>
                    <!-- column data -->
                    <c:forEach var="row" items="${ProgData.rowsByIndex}">
                        <tr>
                            <c:forEach var="column" items="${row}">
                                <td><c:out value="${column}"/></td>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>

            </div>
            <%@include file= "footer.jsp"%>
        </div>
    </body>
</html>
