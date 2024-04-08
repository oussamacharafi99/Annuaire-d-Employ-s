<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>afficher</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<%@ include file="header.jsp" %>
<h1>page afficher </h1>

<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <table class="table">
                <tbody>
                    <tr>
                        <th>ID</th>
                        <th>User Name</th>
                        <th>Email Address</th>
                        <th>Phone Number</th>
                        <th>Department</th>
                        <th>Post</th>
                    </tr>
                    <c:forEach items="${ emps }" var="emp" >
                    <tr>
                    
                    <td>${emp.getId()}</td>
                      <td>${emp.getName()}</td>
                        <td>${emp.getEmail()}</td>
                          <td>${emp.getPhone()}</td>
                            <td>${emp.getDepartement()}</td>
                           <td>${emp.getPost()}</td>
                       <td>
                            <a href="update?id=${emp.getId()}" class="btn btn-primary btn-sm">Modifier</a>
                            <a href="afficher?id=${emp.getId()}" class="btn btn-danger btn-sm">Supprimer</a>
                        </td>
                        
                      </tr>
                      </c:forEach>
            </table>
        </div>
    </div>
    
    <p id="isAbleToAdd" >${  isAbleToAdd }</p>
</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>

let isAbleToAdd =  document.getElementById("isAbleToAdd");
if(isAbleToAdd.innerHTML == "."){

	alert("Ce id est deja utiliser saiser un autre id !");
}

<a href="#" class="btn btn-primary btn-sm">Modifier</a>
<a href="afficher?id=${emp.getId()}" class="btn btn-danger btn-sm">Supprimer</a>
</script>




    


</body>
</html>