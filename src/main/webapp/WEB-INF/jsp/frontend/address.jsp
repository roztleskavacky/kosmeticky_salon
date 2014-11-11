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
           
           .registration{
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
                
                <div class="registration">
                     <div class="panel panel-primary">
                        <div class="panel-heading">
                             <h3 class="panel-title"></h3>
                        </div>
                        <div class="panel-body">

                                <form>
                                    <div class="form-group">
                                        <label for="inputName">Jmeno</label>
                                        <input type="text" class="form-control" id="inputEmail" placeholder="Name">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputSurname">Prijmeni</label>
                                        <input type="text" class="form-control" id="inputEmail" placeholder="Surname">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="inputEmail">Email</label>
                                        <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword">Heslo</label>
                                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="inputRePassword">Heslo znovu</label>
                                        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
                                    </div>
                                    
                                    <button type="submit" class="btn btn-primary">Registrovat</button>
                                </form>
                            </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
