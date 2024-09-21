<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Book Update</title>
    <link rel="stylesheet" href="/fragments/css/bootstrap.min.css"/>
</head>
<body>
<jsp:include page="/fragments/navbar.jsp"/>

<form method="post" class="form">
    <div class="mb-3">
        <label for="title" class="form-label">Book title</label>
        <input id="title" type="text" name="title" class="form-control" value="${build.getTitle()}"/>
    </div>
    <div>
        <label for="pages" class="form-label">Book pages count</label>
        <input id="pages" type="number" name="pages" class="form-control" value="${build.getPages()}"/>
    </div>
    <br>
    <button class="btn btn-success">Update</button>
    <a href="/" class="btn btn-warning">Back</a>
</form>

<script page="/fragments/js/bootstrap.min.js"></script>
</body>
</html>
