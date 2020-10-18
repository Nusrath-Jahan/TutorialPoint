
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <h3 class="text-center" style="color: seagreen">View Users</h3> <br>
        <!--<span></span><a class="d-flex justify-content-center" href="/"><button>Home</button></a><br><br>-->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>UserName</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Address</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${empList}" var="emp">
                    <tr>
                        <td>${emp.id}</td>
                        <td>${emp.username}</td>
                        <td>${emp.name}</td>
                        <td>${emp.email}</td>
                        <td>${emp.pass}</td>        
                        <td>${emp.address}</td>                       
                        
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
