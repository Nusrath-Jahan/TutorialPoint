
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
  
  
  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.21/datatables.min.css"/>
  
<script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.21/datatables.min.js"></script>

<style>
    .jam {
  border: 2px solid black;
  font-size: 16px;
  color: white;
 
  margin-bottom: 0px;
  margin-right: 0px;
  margin-left: 0px;
  background-color: gray;
}
div {
  background-color: #7971ea;
}



</style>
  
  
    </head>
    <body>
        <div>
        <div class="jam">
         <h2><center>Our Students</center></h2>
     </div>
      
        <!--<span></span><a class="d-flex justify-content-center" href="/"><button>Home</button></a><br><br>-->
        <table class="table table-hover" id="myTable">
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
        </div>
        
        
        <footer >
      <div >
        <div class="row">
          <div class="col-md-4">
            <h3>About Online Course</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Porro consectetur ut hic ipsum et veritatis corrupti. Itaque eius soluta optio dolorum temporibus in, atque, quos fugit sunt sit quaerat dicta.</p>
          </div>

          <div class="col-md-3 ml-auto">
            <h3>Links</h3>
            <ul class="list-unstyled footer-links">
              <li><a href="#">Home</a></li>
              <li><a href="#">Courses</a></li>
              <li><a href="#">Programs</a></li>
              <li><a href="#">Teachers</a></li>
            </ul>
          </div>

          <div class="col-md-4">
            <h3>Subscribe</h3>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nesciunt incidunt iure iusto architecto? Numquam, natus?</p>
            <form action="#" class="footer-subscribe">
              <div class="d-flex mb-5">
                <input type="text" class="form-control rounded-0" placeholder="Email">
                <input type="submit" class="btn btn-primary rounded-0" value="Subscribe">
              </div>
            </form>
          </div>

        </div>

        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <div class="border-top pt-5">
            <p>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
      </p>
            </div>
          </div>
          
        </div>
      </div>
    </footer>

        
        
        
        
        
        
        <script>
        $(document).ready( function () {
    $('#myTable').DataTable();
} );
      </script>  
      
     
    </body>
</html>
