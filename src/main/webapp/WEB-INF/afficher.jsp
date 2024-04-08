<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>afficher</title>
<style type="text/css">
        

        h1 {
            text-transform: uppercase;
            text-align: center;
            color: white;
            font-size: 30px;
            padding: 20px 5px;
            background: grey;
        }

        #hr{
            width: 50px;
            border: 10px solid white;
            margin: 5px auto;
        }

        .btn-primary {
            display: block;
            width: 100%;
        }
        #container{
        width:90%;
        
        }
        #main{
        padding-top:20px;
        border-radius:20px;
        margin:0 auto;
        box-shadow: 4px 4px 10px black;
        }
        
        .table thead th {
            color: #ffffff; 
            background-color: #343a40;
            
          }

        .table tbody tr td {
            color: #ffffff;
            background-color: #343a40; 
        }
        
    </style>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
<%@ include file="header.jsp" %>
<h1 >Employee's</h1>
<hr id="hr">
<div class="container" id="container">
    <div class="row" id="main">
        <div class="col-md-8 offset-md-2">
            <table class="table border border-dark">
                	<thead>
                    <tr >
                        <th>ID</th>
                        <th>User Name</th>
                        <th>Email Address</th>
                        <th>Phone Number</th>
                        <th>Department</th>
                        <th>Post</th>
                        <th>Modifier</th>
                        <th>Supprimer</th>
                    </tr>
                    </thead>
                    <tbody >
                    <c:forEach items="${ emps }" var="emp" >
                    <tr>
                    <td>${emp.getId()}</td>
                      <td>${emp.getName()}</td>
                        <td>${emp.getEmail()}</td>
                          <td>${emp.getPhone()}</td>
                            <td>${emp.getDepartement()}</td>
                           <td>${emp.getPost()}</td>
                       <td><a href="update?id=${emp.getId()}" class="btn btn-primary btn-sm">Modifier</a> </td>
                        <td><a href="afficher?id=${emp.getId()}" class="btn btn-danger btn-sm">Supprimer</a></td>
                      </tr>
                      </c:forEach>
            </table>
        </div>
    </div>
    
    <p id="isAbleToAdd" class="text-dark">${ isAbleToAdd }</p>
</div>
<script>

let isAbleToAdd =  document.getElementById("isAbleToAdd");
if(isAbleToAdd.innerHTML == "."){
	alert("Ce id est deja utiliser saiser un autre id !");
}

</script>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

</body>
</html>