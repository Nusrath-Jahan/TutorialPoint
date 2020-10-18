

<%-- 
    Document   : addUser
    Created on : 5 Aug, 2020, 7:11:23 PM
    Author     : shari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <style>
            body {
  background-color: rgba(0, 128, 0, 0.3);
   } 
        </style>
    </head>
    <body>
        <div class="container-fluid">
<div class="row">
<div class="col-sm-12" style="background-color:Black;">
    
    <p><font color="FloralWhite"><center><h1><b>Programming Language Course<b></h1></center></font></p>

</div>
</div>
</div>
        
        
        <div>
            <h2 class="text-center" style="color:maroon"><u>Create Student Information</u></h2> <br>
            <!--<h2 class="d-flex justify-content-center">  Create User</h2><br>-->
            <!--<p >${mssage}</p>-->
            <!--<a class="fluid-right d-flex justify-content-center" href="/"><button>Home</button></a>-->
            <br>
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-2"></div>
                    <div class="col-md-8"> 
                        <form  action="/save">
                            <div class="form-group">
                                <label for="id">ID: </label>
                                <input type="text" class="form-control" id="id" placeholder="Enter ID" name="id">
                            </div>
                            <div class="form-group">
                                <label for="username">UserName: </label>
                                <input type="text" class="form-control" id="username" placeholder="Enter Username" name="username">
                            </div>            
                            <div class="form-group">
                                <label for="name">Name: </label>
                                <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email: </label>
                                <input type="text" class="form-control" id="email" placeholder="Enter Email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="pass">Password: </label>
                                <input type="password" class="form-control" id="pass" placeholder="Enter Password" name="pass">
                            </div>
                            <div class="form-group">
                                <label for="address">Address: </label>
                                <input type="text" class="form-control" id="address" placeholder="Enter Address" name="address">
                            </div>
                            <button type="submit" >Submit</button>
                            
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

