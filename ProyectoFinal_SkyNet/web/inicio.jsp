
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <title>Inicio</title>
    </head>

    <body style="background-image: url(img/fondo1.jpg)">
        <h1>          
        </h1>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: transparent!important; box-shadow: 0 4px 8px rgba(0,0,0,0.3); border: 1px solid whitesmoke">
                <a class="navbar-brand" onClick="window.location.reload();" style="cursor: pointer">Home</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li>
                            <a style="border: transparent" class="btn btn-outline-dark" target="myFrame" href="Controlador?menu=Producto&accion=Listar">Producto<span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" target="myFrame" href="Controlador?menu=Empleado&accion=Listar">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" target="myFrame" href="Controlador?menu=Cliente&accion=Listar">Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" target="myFrame" href="Controlador?menu=Venta&accion=default">Nueva Venta</a>
                        </li>
                        <li>
                            <div class="dropdown">
                                <button style="border: none" class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    ${usuario.getNombreEmpleado()}
                                </button>
                                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">
                                        <img src="img/SkyNet1.png" alt="" width="40" style="border-radius: 30px"/>
                                    </a>
                                    <a class="dropdown-item" href="#">${usuario.getNombreEmpleado()}</a>
                                    <a class="dropdown-item" href="#">${usuario.getUser()}@gmail.com</a>
                                    <div class="dropdown-divider"></div>
                                    <form action="Validar" method="POST">
                                        <button name="accion" name="Salir" class="dropdown-item" href="#">Salir</button>
                                    </form>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <div class="mt-4" style="height: 620px">
            <iframe name="myFrame" style="height: 100%; width: 100%; border: none"></iframe>
        </div>


        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" style="margin-top: 20px">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="img/foto8.jpg" style="height: 700px" alt="First slide">
                    <div class="carousel-caption d-none d-md-block" style="color: white">
                        <h5>Lo que necesitas, lo tenemos</h5>
                        <p>Skynet te da la bienvenida, a través de nuestra página puedes acceder a nuestra variedad de productos y hacerte con la mejor calidad de nuestro país.</p>
                    </div>
                </div>

                <div class="carousel-item">
                    <img class="d-block w-100" src="img/foto7.jpg" style="height: 700px" alt="Second slide">
                    <div class="carousel-caption d-none d-md-block" style="color: white">
                        <h5>Los mejores productos</h5>
                        <p>Skynet tiene la misión de proveerle los mejores productos de electrodomésticos para su hogar, tenemos la responsabilidad de poder ofrecerle a los guatemaltecos el mejor servicio.</p>
                    </div>
                </div>

                <div class="carousel-item">
                    <img class="d-block w-100" src="img/foto5.jpg" style="height: 700px" alt="Third slide">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Todo lo bueno lo encontraras en SkyNet</h5>
                        <p>Tenemos a nuestra disposición múltiples de profesionales que se harán cargo de resolver todas sus dudas y poder ofrecerle una buena asistencia.</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
