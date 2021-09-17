
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Kaisei+HarunoUmi&display=swap" rel="stylesheet">

        <title>Producto</title>
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
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Producto&accion=Listar">Producto<span class="sr-only">(current)</span></a>
                        </li>

                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Empleado&accion=Listar">Empleado</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Cliente&accion=Listar">Cliente</a>
                        </li>
                        <li class="nav-item">
                            <a style="border: transparent" class="btn btn-outline-dark" href="Controlador?menu=Venta&accion=default">Nueva Venta</a>
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
            <form style="width: 500px; border: 1px solid white; padding: 40px 30px 40px 30px; margin-left: 20px; box-shadow: 0 8px 16px rgba(0,0,0,0.5);font-family: 'Kaisei HarunoUmi', serif; font-size: 20px" action="Controlador?menu=Producto" method="POST">
                <div class="form-group">
                    <label>Nombre Producto</label>
                    <input type="text" class="form-control" name="txtNombreProducto" value="${Producto.getNombresProducto()}" placeholder="Nombre del Producto">
                </div>
                <div class="form-group">
                    <label>Precio</label>
                    <input type="text" class="form-control" name="txtPrecio" value="${Producto.getPrecioProducto()}" placeholder="Precio">
                </div>
                <div class="form-group">
                    <label>Stock</label>
                    <input type="text" class="form-control" name="txtStock" value="${Producto.getStock()}" placeholder="Stock">
                </div>
                <div class="form-group">
                    <label>Estado</label>
                    <input type="text" class="form-control" name="txtEstado" value="${Producto.getEstadoProducto()}" placeholder="Estado">
                </div>
                <div>
                    <button type="submit" name="accion" value="Agregar" class="btn btn-outline-light">Agregar</button>
                    <button type="submit" name="accion" value="Actualizar" class="btn btn-outline-light">Actualizar</button>
                </div>
            </form>      
            <main style="display: block; margin-left: 40px; margin-top:15px">
                <table class="table" style="width: 925px">
                    <thead class="thead-dark">

                        <tr style="text-align: center">
                            <th scope="col">Código</th>
                            <th scope="col">Nombre Producto</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Stock</th>
                            <th scope="col">Estado</th>
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="producto" items="${producto}">
                        <tr>
                            <td>${producto.getCodigoProducto()}</td>
                            <td>${producto.getNombresProducto()}</td>
                            <td>${producto.getPrecioProducto()}</td>
                            <td>${producto.getStock()}</td>
                            <td>${producto.getEstadoProducto()}</td> 
                            <td align="center">
                                <a href="Controlador?menu=Producto&accion=Editar&codigoProducto=${producto.getCodigoProducto()}" class="btn btn-outline-light">Editar</a>
                                <a href="Controlador?menu=Producto&accion=Eliminar&codigoProducto=${producto.getCodigoProducto()}" class="btn btn-outline-dark">Eliminar</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </main>
        </section>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
