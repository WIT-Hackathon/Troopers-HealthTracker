<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
 <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <style type="text/css">
 body {
     font-family: "Lato", sans-serif;
 }



 .main-head{
     height: 150px;
     background: #FFF;

 }

 .sidenav {
     height: 100%;
     background-color: #000;
     overflow-x: hidden;
     padding-top: 20px;
 }


 .main {
     padding: 0px 10px;
 }

 @media screen and (max-height: 450px) {
     .sidenav {padding-top: 15px;}
 }

 @media screen and (max-width: 450px) {
     .login-form{
         margin-top: 10%;
     }

     .register-form{
         margin-top: 10%;
     }
 }

 @media screen and (min-width: 768px){
     .main{
         margin-left: 40%;
     }

     .sidenav{
         width: 40%;
         position: fixed;
         z-index: 1;
         top: 0;
         left: 0;
     }

     .login-form{
         margin-top: 80%;
     }

     .register-form{
         margin-top: 20%;
     }
 }


 .login-main-text{
     margin-top: 20%;
     padding: 60px;
     color: #fff;
 }

 .login-main-text h2{
     font-weight: 300;
 }

 .btn-black{
     background-color: #000 !important;
     color: #fff;
 }
 </style>
</head>
<body>
	<div class="sidenav">
             <div class="login-main-text">
                <h2>  Troopers HealthTracker </h2>
      <img class="d-block img-fluid" src="https://naturalhealthcourses.com/wp-content/uploads/2016/03/SNHS-0-health-app2-1024x682.jpg
" >
             </div>
          </div>
          <div class="main">
             <div class="col-md-6 col-sm-12">
                <div class="login-form">
		          <form action="/login" method="post">
                      <div class="form-group">
                         <label>User Name</label>
                         <input type="text" class="form-control" id="username" name="username" placeholder="User Name">
                      </div>
                      <div class="form-group">
                         <label>Password</label>
                         <input type="password" class="form-control" id="pwd" name="password" placeholder="Password">
                      </div>
                      <button type="submit" class="btn btn-black">Login</button>
                   </form>
                </div>
             </div>
          </div>
</body>
</html>