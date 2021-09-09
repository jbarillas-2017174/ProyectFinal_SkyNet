
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Kaisei+HarunoUmi&display=swap" rel="stylesheet">
        <title>Cliente</title>
    </head>
    <body style="background-image: url(img/fondo1.jpg)">
        <h1>          
        </h1>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: transparent!important; box-shadow: 0 4px 8px rgba(0,0,0,0.3); border: 1px solid whitesmoke">
                <a class="navbar-brand" href="#">Home</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li>
                            <a style="border: transparent" class="btn btn-outline-dark" href="#">Producto<span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="#">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="#">Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="#">Nueva Venta</a>
                        </li>
                        <li>
                            
                            <div class="dropdown">
                                <button style="border: none" class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Usuario
                                </button>
                                <div class="dropdown-menu text-center" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">
                                        <img src="img/SkyNet1.png" alt="" width="40" style="border-radius: 30px"/>
                                    </a>
                                    <a class="dropdown-item" href="#">Nombre</a>
                                    <a class="dropdown-item" href="#">usuario@gmail.com</a>
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

        <section style="display: flex; flex-wrap: wrap; margin-top: 30px">
            <form style="width: 500px; border: 1px solid white; padding: 40px 30px 40px 30px; margin-left: 20px; box-shadow: 0 8px 16px rgba(0,0,0,0.5);font-family: 'Kaisei HarunoUmi', serif; font-size: 20px ">
                <div class="form-group">
                    <label for="formGroupExampleInput">DPI</label>
                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="DPI">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Nombres</label>
                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Nombres">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Dirección</label>
                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Telefono">
                </div>
                <div class="form-group">
                    <label for="formGroupExampleInput2">Estado</label>
                    <input type="text" class="form-control" id="formGroupExampleInput2" placeholder="Estado">
                </div>           
                <div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-outline-light">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-outline-dark">
                </div>
            </form>      
            
            <main style="display: block; margin-left: 40px; margin-top:15px">
                <table class="table" style="width: 925px">
                    <thead class="thead-dark">

                        <tr style="text-align: center">
                            <th scope="col">Código</th>
                            <th scope="col">DPI</th>
                            <th scope="col">Nombres</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Fernando</td>
                            <td>Emanuel</td>
                            <td>Diaz</td>                           
                            <td align="center">
                                <button type="button" class="btn btn-outline-light">Editar</button>
                                <button type="button" class="btn btn-outline-dark">Eliminar</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Refrigerador</td>
                            <td>Q4500.00</td>
                            <td>10</td>                          
                            <td align="center">
                                <button type="button" class="btn btn-outline-light">Editar</button>
                                <button type="button" class="btn btn-outline-dark">Eliminar</button>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>                        
                            <td align="center">
                                <button type="button" class="btn btn-outline-light">Editar</button>
                                <button type="button" class="btn btn-outline-dark">Eliminar</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </main>
        </section>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
