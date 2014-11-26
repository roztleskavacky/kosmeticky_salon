<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <title>Administrace</title>
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
            
            .line{
                padding-bottom: 10px;
                height: 70px
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
            <%--
            <div class="banner">
                <img src="resources/img/banner.jpg" alt="banner"  />
            </div>
            
            --%>
        
        
            <div class="bs-example">
                
                
                
                <div class="mainPanel">
                     <div class="panel panel-default">
                        <div class="panel-heading">
                             <h3 class="panel-title">Administrace</h3>
                        </div>
                        <div class="panel-body">
                            <div class="btn-toolbar">
                                <div class="btn-group">
                                    <a href="<c:url value="administrace" />" role="button" class="btn btn-primary">Přehled rezervací</a>
                                    <button type="button" class="btn btn-primary">Editace termínů</button>
                                    <a href="<c:url value="tvorba" />" role="button" class="btn btn-primary">Tvorba termínů</a>
                                    <button type="button" class="btn btn-primary">X</button>
                                </div>

                            </div>
                            
                            <br>
                            <label>Vyberte službu</label>
                            <select id = "service_list">
                              <option value = "1">Čištění pleti ultrazvukem</option>
                              <option value = "2">Masáž obličeje</option>
                              <option value = "3">Úprava a barvení obočí</option>
                              <option value = "4">Barvení řas</option>
                              <option value = "5">Nehtová modeláž</option>
                            </select>
                        <%--
                            <div class="btn-group">
                                <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">Vyberte službu <span class="caret"></span></button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">Čištění pleti ultrazvukem</a></li>
                                    <li><a href="#">Masáž obličeje</a></li>
                                    <li><a href="#">Úprava a barvení obočí</a></li>
                                    <li><a href="#">Barvení řas</a></li>
                                    <li><a href="#">Nehtová modeláž</a></li>
                                </ul>
                            </div>
                        --%>
                            <br>
                            <br>
                            
                            <div class="line">
                                
                                <div style="float: left; padding-right: 10px">
                                   <input type="checkbox"> 
                                </div>
                                
                                <div style="float: left; padding-right: 10px">
                                    
                                    Od:                                  
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">

                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                

                                </div>

                                <div style="float: left; padding-right: 10px">
                                    
                                    Do:
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">
                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                
                                </div>
                                
                                <div>
                                    <label>Pracovník: </label>
                                    <select id = "worker">
                                        <option value = "1">Nováková</option>
                                        <option value = "2">Zelená</option>
                                        <option value = "3">Nová</option>
                                        <option value = "4">Mladá</option>
                                        <option value = "5">Kramná</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="line">
                                
                                <div style="float: left; padding-right: 10px">
                                   <input type="checkbox"> 
                                </div>
                                
                                <div style="float: left; padding-right: 10px">
                                    
                                    Od:                                  
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">

                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                

                                </div>

                                <div style="float: left; padding-right: 10px">
                                    
                                    Do:
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">
                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                
                                </div>
                                
                                <div>
                                    <label>Pracovník: </label>
                                    <select id = "worker">
                                        <option value = "1">Nováková</option>
                                        <option value = "2">Zelená</option>
                                        <option value = "3">Nová</option>
                                        <option value = "4">Mladá</option>
                                        <option value = "5">Kramná</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="line">
                                
                                <div style="float: left; padding-right: 10px">
                                   <input type="checkbox"> 
                                </div>
                                
                                <div style="float: left; padding-right: 10px">
                                    
                                    Od:                                  
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">

                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                

                                </div>

                                <div style="float: left; padding-right: 10px">
                                    
                                    Do:
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">
                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                
                                </div>
                                
                                <div>
                                    <label>Pracovník: </label>
                                    <select id = "worker">
                                        <option value = "1">Nováková</option>
                                        <option value = "2">Zelená</option>
                                        <option value = "3">Nová</option>
                                        <option value = "4">Mladá</option>
                                        <option value = "5">Kramná</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="line">
                                
                                <div style="float: left; padding-right: 10px">
                                   <input type="checkbox"> 
                                </div>
                                
                                <div style="float: left; padding-right: 10px">
                                    
                                    Od:                                  
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">

                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                

                                </div>

                                <div style="float: left; padding-right: 10px">
                                    
                                    Do:
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">
                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                
                                </div>
                                
                                <div>
                                    <label>Pracovník: </label>
                                    <select id = "worker">
                                        <option value = "1">Nováková</option>
                                        <option value = "2">Zelená</option>
                                        <option value = "3">Nová</option>
                                        <option value = "4">Mladá</option>
                                        <option value = "5">Kramná</option>
                                    </select>
                                </div>
                            </div>
                            
                            <div class="line">
                                
                                <div style="float: left; padding-right: 10px">
                                   <input type="checkbox"> 
                                </div>
                                
                                <div style="float: left; padding-right: 10px">
                                    
                                    Od:                                  
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">

                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                

                                </div>

                                <div style="float: left; padding-right: 10px">
                                    
                                    Do:
                                    <div class="time input-group clockpicker" data-placement="left" data-align="top" data-autoclose="true">
                                            <input type="text" class="form-control" value="13:14">
                                            <span class="input-group-addon">
                                                    <span class="glyphicon glyphicon-time"></span>
                                            </span>
                                    </div>
                                    <script type="text/javascript">
                                        $('.clockpicker').clockpicker();
                                    </script>
                                
                                </div>
                                
                                <div>
                                    <label>Pracovník: </label>
                                    <select id = "worker">
                                        <option value = "1">Nováková</option>
                                        <option value = "2">Zelená</option>
                                        <option value = "3">Nová</option>
                                        <option value = "4">Mladá</option>
                                        <option value = "5">Kramná</option>
                                    </select>
                                </div>
                            </div>
                            
                        
                            
                            <div>
                                
                                
                                <form role="form">
                                    <div class="radio">
                                      <label><input type="radio" name="optradio">Jednorázově</label>
                                      
                                      <input style="width: 200px" id="input" type="text" class="form-control" value="1/1/2014">
                                        <script type="text/javascript">
                                            $('#input').datepicker({
                                                format: "dd/mm/yyyy",
                                                weekStart: 1,
                                                todayBtn: true,
                                                autoclose: true,
                                                todayHighlight: true
                                            });
                                        </script>
                            
                                      
                                    </div>
                                    
                                    
                                    <div class="radio">
                                      <label><input type="radio" name="optradio">Opakovaně</label>
                                      
                                      <div class="input-daterange input-group" id="datepicker">
                                            <input style="width: 200px" type="text" class="input form-control" name="start" />
                                            <span class="input-group-addon">do</span>
                                            <input style="width: 200px" type="text" class="input form-control" name="end" />
                                      </div>
                                      
                                      <script type="text/javascript">
                                            $('#datepicker').datepicker({
                                                format: "dd/mm/yyyy",
                                                weekStart: 1,
                                                todayBtn: true,
                                                autoclose: true,
                                                todayHighlight: true
                                            });
                                      </script>
                                      
                                      <div>
                                          Po: <input type="checkbox">
                                          Út: <input type="checkbox">
                                          St: <input type="checkbox">
                                          Čt: <input type="checkbox">
                                          Pá: <input type="checkbox">
                                          So: <input type="checkbox">
                                          Ne: <input type="checkbox">
                                      </div>                                      
                                    </div>
                                    
                                </form>
                                
                                <button type="button" class="btn btn-primary">Uložit</button>    
                                
                                
                            </div>
                            
                            
                            
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


