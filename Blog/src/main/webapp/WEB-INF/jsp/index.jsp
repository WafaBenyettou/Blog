<%@page import="com.blog.helper.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
          body{
                background:url(img/background.png);
                background-size: cover;
                background-attachment: fixed;
            }
        </style>

    </head>
    <body>

        <!--navbar-->
      
            <%@include file="navbar.jsp" %>
            
        <!--//banner-->

       <div class="container-fluid p-0 m-0 text-center">
    <div class="mt-5 mb-5 text-white">
        <div class="container">
            <h3 class="display-2">Capture the flag </h3>
            <p>Welcome to the technical blog, the world of technology. A programming language is a formal language that comprises a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.</p>
            <button class="btn btn-outline-light btn-lg mr-2"><span class="fa fa-user-plus"></span> Register Now</button>
            <a href="LoginServlet" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle"></span> Login</a>
        </div>
    </div>
</div>




<div class="text-center">
  <img src="img/ctf-competitions.png" alt="CTF Competition" class="mx-auto rounded " style="width: 600px;"/>
</div>
      





        <!--javascripts-->
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>