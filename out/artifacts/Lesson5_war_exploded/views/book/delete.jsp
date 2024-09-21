<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Book Delete</title>
    <link rel="stylesheet" href="/fragments/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="/fragments/navbar.jsp"/>

<form method="post">
    <div class="alert alert-danger">
        <h1>Are you sure delete this book <i><c:out value="${book.getTitle()}"/></i>?</h1>
    </div>
    <button type="submit" class="btn btn-danger">Yes</button>
    <a href="/" class="btn btn-warning">Back</a>
</form>

<script page="/fragments/js/bootstrap.min.js"></script>
</body>
</html>
