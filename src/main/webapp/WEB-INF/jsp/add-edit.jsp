<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="UTF-8">
    <title>${modeTitle} Todo </title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
     <link href="https://fonts.googleapis.com/css?family=Oleo+Script:400,700" rel="stylesheet">
     <link href="https://fonts.googleapis.com/css?family=Teko:400,700" rel="stylesheet">
     <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
     <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
     <link rel="stylesheet" href= "/css/style.css">
</head>
<body class="bg-secondary">
<div class="container">
<p>
<a href="${pageContext.request.contextPath}/" class="btn btn-info btn-lg">
<span class="glyphicon glyphicon-home"></span> HOME
</a>
</p>
</div>
</nav>
<div class="container col-9">
    <form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
        <form:hidden path="id"/>
        <div class>
            <div class="col-4 p-1">
                <h4>${modeTitle} Todo</h4>
            </div>
        </div>
        <div class="form-group offset-1 col-10">
            <form:label path="title">Title</form:label>
            <div class="row justify-content-start">
                <form:input class="form-control" path="title"></form:input>
            </div>
            <div class="row justify-content-end">
                <form:errors class="alert alert-danger " role="alert" path="title"></form:errors>
            </div>
        </div>
        <div class="form-group offset-1 col-10">
            <form:label path="description">Description</form:label>
            <div class="row justify-content-start">
                <form:textarea class="form-control" path="description" cols="60" rows="10"></form:textarea>
            </div>
            <div class="row justify-content-end">
                <form:errors class="alert alert-danger" role="alert" path="description"></form:errors>
            </div>
        </div>
         <tr>
                                     <td>
                                         <form:label path="type">Type</form:label>
                                     </td>
                                     <td>
                                         <form:select path="type">
                                         <form:options for=" value : ${values}" text="value.name" value="${values}"></form:options>
                                         </form:select>
                                     </td>
                                     <td>
                                         <form:errors path="type"></form:errors>
                                     </td>
                </tr>
        <div class="row offset-1 col-10">
            <input class="btn btn-danger" type="submit" name="submit" value="Submit">
            <form:button class="btn btn-info" name="cancel">Cancel</form:button>
        </div>
    </form:form>
</div>
</body>
</html>
