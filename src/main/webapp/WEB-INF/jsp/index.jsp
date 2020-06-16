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
            <h1 class="green text-white p-2 style="text-align:center;>Todo Items</h1>
        </div>
    </div>
   <div class="alert alert-success">

                   <strong>Success!</strong> Hello. . .Welcome to my Todo Application feel free to explore..!
        </div>

   <div class="container" style="margin:70px;">
   <div class="row" style="background-color: orange">
     <div class="col">Title</div>
     <div class="col">Completed</div>
     <div class="col">Action</div>
     <div class="col">Type</div>
   </div>

   <c:forEach var="todo" items="${todos}">
   <div class="row" style="background-color:light green">
     <div class="col" >${todo.title}</div>
     <div class="col">${todo.completed}</div>
     <div class="col">

     <a  class="btn-success" href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
                 &nbsp;
                 <a class="btn-danger" href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
                 &nbsp;
                 <a  class="btn-warning" href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>

     </div>
     <div class="col">${todo.type.name}</div>
     <hr>
   </div>
   </c:forEach>
   </div>
   </div>

   </div>
   </div>
   </body>
   </html>