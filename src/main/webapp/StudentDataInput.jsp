<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<sql:setDataSource var="student" driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/studentdb"
                   user="root" password=""/>
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
                <sql:update var="insert" dataSource="${student}">
                    INSERT INTO student VALUES(?,?,?,?);
                    <sql:param value="${param.SID}" />
                    <sql:param value="${param.Sname}" />
                    <sql:param value="${param.SHQ}" />
                    <sql:param value="${param.Pcode}" />
                </sql:update>
                <sql:query var="studentmaster" dataSource="${student}">
                    SELECT * FROM student WHERE SID = ? <sql:param value="${param.SID}" />;
                </sql:query>
                The Record Entered by you is:
                <table class="table">
                    <!-- column headers -->
                    <tr>
                        <th>Student ID</th>
                        <th>Student Name</th>
                        <th>Highest Qualification</th>
                        <th>Programme Code</th>
                    </tr>
                    <!-- column data -->
                    <c:forEach var="row" items="${studentmaster.rowsByIndex}">
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


