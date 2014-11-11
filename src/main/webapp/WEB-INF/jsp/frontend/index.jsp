<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Kosmetický salón</title>
        <meta charset="UTF-8">
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script> 
    </head>
    
    <body>
        <div class="container">
            <div class="page-header">
                <h1>Kosmetický salón <small>úvodní stránka</small></h1>
            </div>
            
            <ul class="nav nav-pills" role="tablist">
                <li role="presentation">
                    <a href="<c:url value="/"/>">Úvod</a>
                </li>
                <li role="presentation">
                    <a href="<c:url value="/rezervace"/>">Rezervace</a>
                </li>
                <li role="presentation">
                    <a href="<c:url value="/adresa"/>">Adresa</a>
                </li>
            </ul>
        </div>
    </body>
</html>
