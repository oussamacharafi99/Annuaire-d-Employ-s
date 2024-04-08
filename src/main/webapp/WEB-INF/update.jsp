<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Employee</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   
    <style type="text/css">
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 20px;
            border: 1px solid grey;
            box-shadow: 4px 4px 10px black;
        }

        form > div {
            margin-bottom: 15px;
        }

        form > div > label {
            padding: 2px;
            font-size: 14px;
            text-transform: uppercase;
        }

        form > div > input {
            padding: 10px;
            max-width: 100%;
        }

        h1, h2 {
            text-transform: uppercase;
            text-align: center;
            color: white;
            font-size: 30px;
            padding: 20px 5px;
            background: grey;
        }

        hr {
            width: 50px;
            border: 10px solid white;
            margin: 5px auto;
        }

        .btn-primary {
            display: block;
            width: 100%;
        }
    </style>
</head>
<body>
<%@ include file="header.jsp" %>

<h1>Update Employee</h1>
<hr>

<form method="POST" action="update">
    <div class="form-group">
        <label for="id">ID</label>
        <input type="number" name="id" class="form-control" id="id" placeholder="Enter ID" value="${emp.getId()}" readonly>
    </div>
    <div class="form-group">
        <label for="username">User Name</label>
        <input type="text" name="name" class="form-control" id="username" placeholder="Enter Full Name" value="${emp.getName()}">
    </div>
    <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email" value="${emp.getEmail()}">
    </div>
    <div class="form-group">
        <label for="phone">Phone Number</label>
        <input type="tel" name="phone" class="form-control" id="phone" placeholder="Enter Phone" value="${emp.getPhone()}">
    </div>
    <div class="form-group">
        <label for="department">Department</label>
        <input type="text" name="departement" class="form-control" id="department" placeholder="Enter Department" value="${emp.getDepartement()}">
    </div>
    <div class="form-group">
        <label for="post">Post</label>
        <input type="text" name="post" class="form-control" id="post" placeholder="Enter Post" value="${emp.getPost()}">
    </div>
    <button type="submit" class="btn btn-primary">Update</button>
</form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
