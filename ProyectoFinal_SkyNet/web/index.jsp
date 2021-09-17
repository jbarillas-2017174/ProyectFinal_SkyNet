
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>Login</title>
    </head>
    <body style="background-image: url(img/fondo1.jpg)">

        <div class="container mt-4 col-lg-4" style="padding: 40px 20px 40px 20px">
            <div class="card col-sm-10" style="background: transparent!important; box-shadow: 0 8px 16px rgba(0,0,0,0.5)">
                <div class="card-body">
                    <form class="form-sign" action="Validar" method="POST">
                        <div class="form-group text-center">
                            <img src="img/logo.png" style="border-radius: 50%; width: 100px; height: 100px"/>
                            <h3>Iniciar Sesión</h3>
                        </div>
                        <div class="form-group" style="color: #fff">
                            <label>Usuario</label>
                            <input type="text" name="txtUser" class="form-control" placeholder="Ingrese su usuario">
                        </div>
                        <div class="form-group" style="color: #fff">
                            <label>Contraseña</label>
                            <input type="password" name="txtPass" class="form-control" placeholder="Ingrese su contraseña">
                        </div>
                        <div style="text-align: center">
                            <input type="submit" name="accion" value="Ingresar" class="btn btn-outline-light">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.onmin.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
