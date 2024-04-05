<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="Bootstrap.jsp" %>
<meta charset="ISO-8859-1">
<title>afficher</title>
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
                      </tr>
                      </c:forEach>
            </table>
        </div>
    </div>
</div>




    


</body>
</html>