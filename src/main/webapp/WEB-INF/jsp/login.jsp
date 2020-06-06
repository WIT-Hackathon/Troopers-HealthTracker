<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
 <style type="text/css">
.login-container{
    margin-top: 5%;
    margin-bottom: 5%;
}
.login-logo{
    position: relative;
    margin-left: -41.5%;
}
.login-logo img{
    position: absolute;
    width: 20%;
    margin-top: 19%;
    background: #282726;
    border-radius: 4.5rem;
    padding: 5%;
}
.login-form-1{
    padding: 9%;
    background:#282726;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-1 h3{
    text-align: center;
    margin-bottom:12%;
    color:#fff;
}
.login-form-2{
    padding: 9%;
    background: #b2beb5;
    box-shadow: 0 5px 8px 0 rgba(0, 0, 0, 0.2), 0 9px 26px 0 rgba(0, 0, 0, 0.19);
}
.login-form-2 h3{
    text-align: center;
    margin-bottom:12%;
    color: #fff;
}
.btnSubmit{
    font-weight: 600;
    width: 50%;
    color: #fff;
    background-color: #74B14E;
    border: none;
    border-radius: 1.5rem;
    padding:2%;
}
.btnForgetPwd{
    color: #fff;
    font-weight: 600;
    text-decoration: none;
}
.btnForgetPwd:hover{
    text-decoration:none;
    color:#fff;
}
.headingT{
    color:#fff;
}

 </style>
</head>
<body>
            <div class="row">
                <div class="col-md-6 login-form-1">
                    <h2 class="headingT">&nbsp;&nbsp;&nbsp;Troopers HealthTracker&nbsp;&nbsp;&nbsp;</h2>
                           <img class="d-block img-fluid" src="https://naturalhealthcourses.com/wp-content/uploads/2016/03/SNHS-0-health-app2-1024x682.jpg
                     " >
                </div>
                <div class="col-md-6 login-form-2">
       <form action="/login" method="post">
                    <div class="login-logo">
                        <img src="https://image.freepik.com/free-vector/stay-home-stay-safe-concept-heart-house-poster_1017-24658.jpg" alt=""/>
                    </div>
                    <h3>Login</h3>
                        <div class="form-group">
                         <input type="text" class="form-control" id="username" name="username" placeholder="User Name">
                        </div>
                        <div class="form-group">
                         <input type="password" class="form-control" id="pwd" name="password" placeholder="Password">
                        </div>
                        <div class="form-group">
                            <input type="submit" class="btnSubmit" value="Login" />
                        </div>

                    </form>
                </div>
            </div>
        </div>
</body>
</html>