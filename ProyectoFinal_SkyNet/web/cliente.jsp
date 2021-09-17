
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
        <title>Cliente</title>
    </head>
    <body style="background-image: url(img/fondo1.jpg)">
        

        <section style="display: flex; flex-wrap: wrap; margin-top: 30px">
            <form style="width: 500px; border: 1px solid white; padding: 40px 30px 40px 30px; margin-left: 20px; box-shadow: 0 8px 16px rgba(0,0,0,0.5);font-family: 'Kaisei HarunoUmi', serif; font-size: 20px " action="Controlador?menu=Cliente" method="POST">
                <div class="form-group">
                    <label>DPI</label>
                    <input type="text" class="form-control" name="txtDPICliente" value="${Cliente.getDPICliente()}" placeholder="DPI">
                </div>
                <div class="form-group">
                    <label>Nombres</label>
                    <input type="text" class="form-control" name="txtNombresCliente" value="${Cliente.getNombreCliente()}" placeholder="Nombres">
                </div>
                <div class="form-group">
                    <label>Dirección</label>
                    <input type="text" class="form-control" name="txtTelefonoCliente" value="${Cliente.getDireccionCliente()}" placeholder="Dirección">
                </div>
                <div class="form-group">
                    <label>Estado</label>
                    <input type="text" class="form-control" name="txtEstadoCliente" value="${Cliente.getEstadoCliente()}" placeholder="Estado">
                </div>           
                <div>
                    <input type="submit" name="accion" value="Agregar" class="btn btn-outline-light">
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-outline-dark">
                </div>
            </form>      
            
            <main style="display: block; margin-left: 30px; margin-top:15px">
                <table class="table" style="width: 925px">
                    <thead class="thead-dark">

                        <tr style="text-align: center">
                            <th scope="col">Código</th>
                            <th scope="col">DPI</th>
                            <th scope="col">Nombres</th>
                            <th scope="col">Dirección</th>
                            <th scope="col">Acciones</th>
                            <th scope="col">Estado</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="cliente" items="${cliente}">
                        <tr>
                            <td>${cliente.getCodigoCliente()}</td>
                            <td>${cliente.getDPICliente()}</td>
                            <td>${cliente.getNombreCliente()}</td>
                            <td>${cliente.getDireccionCliente()}</td> 
                            <td>${cliente.getEstadoCliente()}</td>
                            <td align="center">
                                <a href="Controlador?menu=Cliente&accion=Editar&codigoCliente=${cliente.getCodigoCliente()}" class="btn btn-outline-light">Editar</a>
                                <a href="Controlador?menu=Cliente&accion=Eliminar&codigoCliente=${cliente.getCodigoCliente()}" class="btn btn-outline-dark" >Eliminar</a>
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
