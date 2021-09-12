
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Kaisei+HarunoUmi&display=swap" rel="stylesheet">
        <title>Nueva Venta</title>
    </head>
    <body style="background-image: url(img/fondo1.jpg)">
        <h1>          
        </h1>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: transparent!important; box-shadow: 0 4px 8px rgba(0,0,0,0.3); border: 1px solid whitesmoke">
                <a class="navbar-brand" href="Controlador?menu=Principal">Home</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavDropdown">
                    <ul class="navbar-nav">
                        <li>
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Producto">Producto<span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Empleado">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Cliente">Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Venta">Nueva Venta</a>
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

        <section style="display: flex; flex-wrap: wrap; margin-top: 30px">
            <div style="border: 2px solid white; width: 550px; margin-top: 30px; margin-left: 20px; padding: 25px 0px 25px 15px; box-shadow: 0 8px 16px rgba(0,0,0,0.4); font-family: 'Kaisei HarunoUmi', serif; font-size: 17px ">

                <div>
                    <label>
                        Datos del Cliente:
                    </label>
                    <div style="display: flex">
                        <input type="text" class="input-group-text" style="width: 82px" placeholder="Código">
                        <input type="submit" class="btn btn-outline-dark" value="Buscar Cliente" style="width: 135px">
                        <input type="text" class="input-group-text" style="margin-left: 75px">        
                    </div>
                </div>

                <div>
                    <label style="margin-top: 10px">
                        Datos Producto:
                    </label>
                    <div style="display: flex">
                        <input type="text" class="input-group-text" style="width: 100px" placeholder="Producto">
                        <input type="submit" class="btn btn-outline-dark" value="Buscar">
                        <input type="text" class="input-group-text" style="margin-left: 110px">
                    </div>
                    <div style="display: flex; margin-top: 30px">
                        <input type="text" class="input-group-text" style="width: 200px;" placeholder="Q.00.00">
                        <input type="text" class="input-group-text" style="width: 85px; margin-left: 90px" placeholder="1">
                        <input type="text" class="input-group-text" style="width: 75px; margin-left: 35px" placeholder="Stock">
                    </div>
                </div>
                <input style="margin-top: 25px;" type="submit" class="btn btn-outline-light" value="Agregar Producto">
            </div>

            <form style="display: block;margin-left: 40px; margin-top:15px">
                
                <div style="width: 275px; margin-left: 575px "class="input-group">
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
                    <input style="margin-left: 420px" type="text" readonly="readonly" class="input-group-text" placeholder="Q.00.00">
                </div>
                

            </form>
        </section>

       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
