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
        <title>Add Student</title>
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <div class="body">
            <%@include file= "header.jsp"%><%@include file= "nav.jsp"%>
            <div id="data">
                <h4>Add Student Details</h4>
                <form name="InputStudentData" action="StudentDataInput.jsp" method="POST">
                    <table>
                        <tr>
                            <td>Student ID</td>
                            <td>: <input type="text" name="SID"/></td>
                        </tr>
                        <tr>
                            <td>Student Name</td>
                            <td>: <input type="text" name="Sname" />
                            </td>
                        </tr>
                        <tr>
                            <td> Highest Qualification </td>
                            <td>: <input type="text" name="SHQ" />
                            </td>
                        </tr>
                        <tr>
                            <td> Select Programme</td>
                            <td>: <select class="" name="Pcode">
                                    <c:forEach var="row" items="${ProgData.rows}">
                                        <option value="<c:out value="${row.Pcode}"/>">
                                            <c:out value="${row.ProgrammeName}"/>
                                        </option>
                                    </c:forEach>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td></td><td>&nbsp;&nbsp;<input type="submit" value="Submit Information" name="Submit" /></td>
                        </tr>
                    </table>
                </form>
            </div>
            <%@include file= "footer.jsp"%>
        </div>
    </body>
</html>
