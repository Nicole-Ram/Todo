<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Todo List</title>
<link rel="stylesheet" href= "/css/style.css">
<link rel="stylesheet"  href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap/bootstrap.min.css" />
</head>
<body>
<jsp:include page="/WEB-INF/jsp/nav-bar.jsp"/>
<div class="container-fluid">
    <div class="row mt-4">
        <div class="col-12">
            <h1 class="bg-success text-white p-2">Todo Items</h1>
        </div>
    </div>
    <table class="table table-sm table-success">

        <head>
        <tr>
            <th scope="col"><label>Title</label></th>
            <th scope="col"><label>Completed</label></th>
            <th scope="col"><label>Action</label></th>
        </tr>
        </head>
        <body>
        <c:forEach var="todo" items="${todo}">
        <tr>
            <th scope="row">${todo.id}</th>
            <td>
                    ${todo.title}
            </td>
            <td>
                    ${todo.completed}
            </td>
            <td>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <a class="btn btn-primary" href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
                    <a class="btn btn-secondary" href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
                    <a class="btn btn-success" href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
                </div>
            </td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
