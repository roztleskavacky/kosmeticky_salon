<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> 
        
        <style type="text/css">
           .bs-example{
               
               
               
               
           }
           .container{
               width: 1000px;
               margin: auto;
               padding: 0;
           }
           
           .obrazek{
               width: 1000px;
               height: 200px;
               background-color: #7ab5d3;
           }
           
           .menu{
               margin-top: 20px;
               width: 250px;
               float: left;
           }
           
           .mainPanel{
               margin-top: 20px;
               margin-right: 0px;
               width: 730px;
               float: right;
              
           }
           
           
           
       </style>
    </head>
    
    <body>
        <div class="container">
            <div class="obrazek">
                Tady bude obrazek
            </div>
            
            
        
        
            <div class="bs-example">
                
                <div class="menu">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                             <h3 class="panel-title">Menu</h3>
                        </div>
                        <div class="panel-body">

                        
                            
                            
                        </div>

                    </div>
                </div>
                
                <div class="mainPanel">
                     <div class="panel panel-primary">
                        <div class="panel-heading">
                             <h3 class="panel-title"></h3>
                        </div>
                        <div class="panel-body">
                            <form>
                                
                                <div class="btn-group">
                                    <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">Poverena osoba <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Novakova</a></li>
                                        <li><a href="#">Nova</a></li>
                                        <li><a href="#">Zelena</a></li>
                                        
                                    </ul>
                                </div>
                                
                                <!--Default buttons with dropdown menu-->
                                <div class="btn-group">
                                    <button type="button" data-toggle="dropdown" class="btn btn-default dropdown-toggle">Typ sluzby<span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Strihani vlasu</a></li>
                                        <li><a href="#">Manikura</a></li>
                                        
                                    </ul>
                                </div>
                                
                            </form>    
                            
                            <br>
                            
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th class="col-sm-1">Datum</th>
                                        <th class="col-sm-5">Terminy</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="col-sm-1">25.3.2014</td>
                                        <td class="col-sm-5">
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">10:00<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Potvrdit</a></li>
                                                </ul>
                                            </div>
                                            
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">12:00<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Potvrdit</a></li>
                                                </ul>
                                            </div>
                                            
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">15:00<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Potvrdit</a></li>
                                                </ul>
                                            </div>
                                            
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="col-sm-1">27.5.2014</td>
                                        <td class="col-sm-5">
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">10:00<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Potvrdit</a></li>
                                                </ul>
                                            </div>
                                            
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">15:00<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Potvrdit</a></li>
                                                </ul>
                                            </div>
                                        
                                        </td>
                                        
                                    </tr>
                                    <tr>
                                        <td class="col-sm-1">30.5.2014</td>
                                        <td class="col-sm-5">
                                            <div class="btn-group">
                                                <button type="button" data-toggle="dropdown" class="btn btn-info dropdown-toggle">10:00<span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#">Potvrdit</a></li>
                                                </ul>
                                            </div>
                                            
                                            
                                        
                                        
                                        </td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                            
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
