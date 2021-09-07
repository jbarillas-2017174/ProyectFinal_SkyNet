
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body style="background-image: url(img/fondo1.jpg)">

        <form>           
        </form>
        <div style="width: 350px; text-align: center; box-shadow: 0 8px 16px rgba(0,0,0,0.2); padding: 40px 20px 40px 20px; margin: 0 auto; position: relative; border: 1px solid white; top: 100px">
            <img src="img/logo.png" style="width: 100px; height: 100px;border-radius: 50%; "/>
            <h1>Inicio de Sesión</h1>
            <div class="form-group" style="color: #fff; text-align: left">
                <label for="userID">Nombre de usuario</label>
                <input type="email" class="form-control" id="userID" placeholder="Usuario">
            </div>
            <div class="form-group" style="color: #fff; text-align: left">
                <label for="password1">Contraseña</label>
                <input type="password" class="form-control" id="password1" placeholder="Contraseña"> 
            </div>
            <button type="button" class="btn btn-outline-light">Ingresar</button>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.onmin.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
