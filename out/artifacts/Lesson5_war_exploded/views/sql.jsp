<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sql" uri="jakarta.tags.sql" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>SQL Example</title>
</head>
<body>
<sql:setDataSource var="myds"
                   driver="org.postgresql.Driver"
                   url="jdbc:postgresql://localhost:5432/jakarta?currentSchema=public"
                   user="postgres"
                   password="2210"/>

<sql:query var="result" dataSource="${myds}">
    select * from book;
</sql:query>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-10 offset-1">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Title</th>
                    <th scope="col">Pages Count</th>
                    <th scope="col">Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${result.rows}" var="bookList">
                    <tr>
                        <td><c:out value="${bookList.id}"/></td>
                        <td><c:out value="${bookList.title}"/></td>
                        <td><c:out value="${bookList.pages}"/></td>
                        <td>
                            <a href="/book/delete/${bookList.id}" class="btn btn-danger">Delete</a> ||
                            <a href="/book/update/${bookList.id}" class="btn btn-warning">Update</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

</body>
</html>
