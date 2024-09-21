<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Book List Page</title>
    <link rel="stylesheet" href="/fragments/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="/fragments/navbar.jsp"/>

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
                <c:forEach items="${bookList}" var="bookList">
                    <tr>
                        <td><c:out value="${bookList.getId()}"/></td>
                        <td><c:out value="${bookList.getTitle()}"/></td>
                        <td><c:out value="${bookList.getPages()}"/></td>
                        <td>
                            <a href="/book/delete/${bookList.getId()}" class="btn btn-danger">Delete</a> ||
                            <a href="/book/update/${bookList.getId()}" class="btn btn-warning">Update</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script page="/fragments/js/bootstrap.min.js"></script>
</body>
</html>
