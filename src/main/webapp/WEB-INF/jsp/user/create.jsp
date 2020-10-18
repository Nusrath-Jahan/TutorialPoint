
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Create User</h1><br>
        <form action="/user/save" method="post">
            <div class="form-group">
                <label for="username">Username : </label>
                <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
            </div>
            <div class="form-group">
                <label for="password">Password : </label>
                <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
            </div>

            <button type="submit" class="btn btn-default">Create User</button>
            
            <a href="/user/login">Login User</a>
        </form>
    </body>
</html>
