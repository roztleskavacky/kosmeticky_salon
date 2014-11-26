<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Rezervace</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="resources/css/datepicker3.css">
        
        
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
           
       </style>
    </head>
    
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script> 
        <script src="resources/js/bootstrap-datepicker.js"></script>
        
        
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
                             <h3 class="panel-title">Rezervace</h3>
                        </div>
                        <div class="panel-body">
                            <form>
                                
                                <div class="btn-group">
                                    <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">Pověřená osoba <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Nováková</a></li>
                                        <li><a href="#">Nová</a></li>
                                        <li><a href="#">Zelená</a></li>
                                        <li><a href="#">Mladá</a></li>
                                        <li><a href="#">Kramná</a></li>
                                    </ul>
                                </div>
                                
                                
                                <!--
                                
                                <div class="btn-group">
                                    <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">Typ služby<span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Nehtová modeláž</a></li>
                                        <li><a href="#">Čištění pleti</a></li>
                                        <li><a href="#">Manikůra</a></li>
                                    </ul>
                                </div>
                                -->
                                
                            </form>    
                            
                            <br>
                            
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th class="col-sm-2" >Čištění pleti ultrazvukem</th>
                                        <th class="col-sm-2" >Masáž obličeje</th>
                                        <th class="col-sm-2" >Úprava a barvení obočí</th>
                                        <th class="col-sm-2" >Barvení řas</th>
                                        <th class="col-sm-2" >Nehtová modeláž</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">9:00 - 10:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nováková</a></li>
                                                    <li><a href="#">Zelená</a></li>
                                                </ul>
                                            </div>   
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">10:00 - 10:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nová</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">12:00 - 12:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Zelená</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">10:00 - 10:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Mladá</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">13:00 - 15:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nová</a></li>
                                                    <li><a href="#">Kramná</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>  
                                    
                                    <tr>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">10:00 - 11:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nováková</a></li>
                                                    
                                                </ul>
                                            </div>   
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">10:30 - 11:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nová</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">12:30 - 13:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Zelená</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">10:30 - 11:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Mladá</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-warning dropdown-toggle btn-sm myBtnTime">15:00 - 17:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Zrušit rezervaci</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">12:00 - 13:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nováková</a></li>
                                                    
                                                </ul>
                                            </div>   
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">12:00 - 12:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nová</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">13:00 - 13:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Zelená</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">12:00 - 12:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Mladá</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">17:00 - 19:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nová</a></li>
                                                    <li><a href="#">Kramná</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">13:00 - 14:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nováková</a></li>
                                                    
                                                </ul>
                                            </div>   
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">12:30 - 13:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Nová</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">13:30 - 14:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Zelená</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">12:30 - 13:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Mladá</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-warning dropdown-toggle btn-sm myBtnTime">14:00 - 15:00 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Zrušit rezervaci</a></li>
                                                    
                                                </ul>
                                            </div>   
                                        </td>
                                        <td>
                                            
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">14:00 - 14:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Zelená</a></li>
                                                    
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle btn-sm myBtnTime">13:00 - 13:30 <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Mladá</a></li>
                                                </ul>
                                            </div>
                                        </td>
                                        <td>
                                            
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                            
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

