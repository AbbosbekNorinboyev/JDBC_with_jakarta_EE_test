<%--
  Created by IntelliJ IDEA.
  User: norin
  Date: 12/26/2023
  Time: 2:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Create</title>
    <link rel="stylesheet" href="/fragments/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="/fragments/navbar.jsp"/>

<form method="post">
    <div class="mb-3">
        <label for="title" class="form-label">Book title</label>
        <input type="text" class="form-control" id="title" name="title">
    </div>
    <div class="mb-3">
        <label for="pages" class="form-label">Book pages count</label>
        <input type="number" class="form-control" id="pages" name="pages">
    </div>
    <button type="submit" class="btn btn-success">Save</button>
</form>

<script page="/fragments/js/bootstrap.min.js"></script>
</body>
</html>
