
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
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
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Usuario
                            </a>
                            <div style="border: transparent" class="dropdown-menu btn btn-outline-dark" aria-labelledby="navbarDropdownMenuLink">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <section style="display: flex; flex-wrap: wrap; margin-top: 30px">
            <div style="border: 2px solid white; width: 550px; margin-top: 30px; margin-left: 20px; padding: 25px 0px 25px 15px; box-shadow: 0 8px 16px rgba(0,0,0,0.4); font-family: 'Kaisei HarunoUmi', serif; font-size: 17px ">

                <div>
                    <label>
                        Datos del Cliente:
                    </label>
                    <div style="display: flex">
                        <input type="text" class="input-group-text" style="width: 50px">
                        <input type="submit" class="btn btn-outline-dark" value="Buscar Cliente">
                        <input type="text" class="input-group-text" style="margin-left: 125px">        
                    </div>
                </div>

                <div>
                    <label style="margin-top: 10px">
                        Datos Producto:
                    </label>
                    <div style="display: flex">
                        <input type="text" class="input-group-text" style="width: 100px">
                        <input type="submit" class="btn btn-outline-dark" value="Buscar">
                        <input type="text" class="input-group-text" style="margin-left: 125px">
                    </div>
                    <div style="display: flex; margin-top: 30px">
                        <input type="text" class="input-group-text" style="width: 200px;">
                        <input type="text" class="input-group-text" style="width: 85px; margin-left: 97px">
                        <input type="text" class="input-group-text" style="width: 80px; margin-left: 35px">
                    </div>
                </div>
                <input style="margin-top: 25px;" type="submit" class="btn btn-outline-light" value="Agregar Producto">
            </div>

            <main style="display: block;margin-left: 40px; margin-top:15px">
                
                <div style="width: 225px; margin-left: 625px "class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Serie:</span>
                    </div>
                    <input type="text" aria-label="First name" class="form-control">                 
                </div><br>
                
                <table class="table" style="width: 850px">
                    
                    <thead class="thead-dark">

                        <tr style="text-align: center">
                            <th scope="col">Número</th>
                            <th scope="col">Código</th>
                            <th scope="col">Descripción</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Sub-Total</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Fernando</td>
                            <td>Emanuel</td>
                            <td>Diaz</td>
                            <td>Morales</td> 
                            <td>Morales</td> 
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
                            <td>1</td>
                            <td>1</td>
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
                            <td>pendiente</td>
                            <td>1</td>
                            <td align="center">
                                <button type="button" class="btn btn-outline-light">Editar</button>
                                <button type="button" class="btn btn-outline-dark">Eliminar</button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div style="display: flex">
                    <input type="submit" name="accion" value="Generar Venta" class="btn btn-outline-light">
                    <input style="margin-left: 15px" type="submit" name="accion" value="Cancelar" class="btn btn-outline-dark">
                    <input style="margin-left: 420px" type="text" readonly="readonly" class="input-group-text" Value="Q.">
                </div>
                

            </main>
        </section>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.onmin.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    </body>
</html>
