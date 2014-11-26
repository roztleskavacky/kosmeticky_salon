<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Registrace</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="resources/css/datepicker3.css">
        <link rel="stylesheet" href="resources/css/clockpicker.css">
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script> 
        <script src="resources/js/bootstrap-datepicker.js"></script>
        
        <script src="resources/js/clockpicker.js"></script> 
        
        
        <style type="text/css">
           .bs-example{
               
               
               
               
           }
           .container{
               width: 1000px;
               margin: auto;
               padding: 0;
           }
           
           .banner{
               height: 270px;
               margin: auto;
           }
           
           .menu{
               margin-top: 20px;
               width: 250px;
               float: left;
           }
           
           .mainPanel{
               margin-top: 20px;
               margin-right: 20px;
               width: 730px;
               float: left;
              
           }
           
           .myBtnTime{
               width: 120px;
           }
           
           .table thead>tr>th{
            vertical-align: top;
            text-align: center;
            }
            
            .time{
                width: 100px;
                
            }
           
       </style>
    </head>
    
    <body>
        
        
        
        
        
        <div class="container">
            <nav role="navigation" class="navbar navbar-default navbar-inverse">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="<c:url value="/" />" class="navbar-brand">Úvod</a>
                </div>
                <!-- Collection of nav links, forms, and other content for toggling -->
                <div id="navbarCollapse" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="rezervace" />">Rezervace</a></li>
                        <li><a href="#">O nás</a></li>
                        <li><a href="#">Kontakty</a></li>
                        <li><a href="<c:url value="administrace" />">Administrace</a></li>
                    </ul>

                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#">Nepřihlášen</a></li>
                        <!--
                        <li><a href="#">Jana Nováková</a></li>
                        -->
                         <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">Přihlášení<b class="caret"></b></a>
                            <ul role="menu" class="dropdown-menu" style="padding: 10px;">
                                <form action="" role="form">
                                                 <div class="form-group">
                                                        <label for="user">Email</label>
                                                        <input type="text" class="form-control" id="user" placeholder="Email" />
                                                <label for="password">Heslo</label>
                                                        <input type="password" class="form-control" id="password" placeholder="Heslo" />
                                                        
                                                </div>
                                           <button type="submit" class="btn btn-default">Přihlásit</button>
                                           
                                           <a href="<c:url value="registrace" />">Registrovat</a>
                                        </form>

                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
            
            <div class="banner">
                <img src="resources/img/banner.jpg" alt="banner"  />
            </div>
            
            
        
        
            <div class="bs-example">
                
                
                
                <div class="mainPanel">
                     <div class="panel panel-default">
                        <div class="panel-heading">
                             <h3 class="panel-title">Registrace</h3>
                        </div>
                        <div class="panel-body">
                                
                            <form>
                                <div class="form-group">
                                    <label for="inputName">Jméno: </label>
                                    <input type="text" class="form-control" id="inputEmail" placeholder="Jméno">
                                </div>
                                <div class="form-group">
                                    <label for="inputSurname">Příjmení: </label>
                                    <input type="text" class="form-control" id="inputEmail" placeholder="Příjmení">
                                </div>

                                <div class="form-group">
                                    <label for="inputEmail">Email: </label>
                                    <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword">Heslo: </label>
                                    <input type="password" class="form-control" id="inputPassword" placeholder="Heslo">
                                </div>

                                <div class="form-group">
                                    <label for="inputRePassword">Heslo znovu: </label>
                                    <input type="password" class="form-control" id="inputPassword" placeholder="Heslo pro kontrolu">
                                </div>

                                <button type="submit" class="btn btn-primary">Registrovat</button>
                            </form>
                                
                            
                            
                            
                            
                        </div>
                    </div>
                </div>
                
                <div class="menu">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             <h3 class="panel-title">Kalendář</h3>
                        </div>
                        <div class="panel-body">
                            <div id="datetime">
                                <script type="text/javascript">
                                    $('#datetime').datepicker({
                                        todayBtn: true,
                                        weekStart: 1,
                                        todayHighlight: true
                                    });
                                </script>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>



