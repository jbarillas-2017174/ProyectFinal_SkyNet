
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
        <title>Nueva Venta</title>
    </head>
    <body style="background-image: url(img/fondo1.jpg)">
        <div class="d-flex" >
            <div class="col-sm-4">
                    <div class="card" style="background: transparent!important">
                        <form action="Controlador?menu=Venta" method="POST">
                            <div class="card-body" >
                                <%--Formulario Cliente--%>
                                <div class="form-group"> 
                                    <label>Datos Del Cliente:</label>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <input type="text" name="txtCodigoCliente" class="form-control" value="${cliente.getDPICliente()}" placeholder="Codigo Cliente">
                                        <input type="submit" name="accion" value="BuscarCliente" class="btn btn-outline-dark">
                                    </div>
                                    <div class="col-sm-6 d-flex">
                                        <input type="text" name="txtNombreCliente" value="${cliente.getNombreCliente()}" class="form-control">
                                    </div>
                                </div>
                                <!--Formulario Producto-->
                                <div class="form-group">
                                    <label>Datos Producto:</label>
                                </div>
                                <div class="form-group d-flex">
                                    <div class="col-sm-6 d-flex">
                                        <input type="text" name="txtCodigoProducto" class="form-control" value="${producto.getCodigoProducto()}" placeholder="Codigo Producto">
                                        <button type="submit" name="accion" value="BuscarProducto" class="btn btn-outline-dark">Buscar</button>
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" name="txtNombresProducto" class="form-control" value="${producto.getNombresProducto()}" placeholder="Producto">
                                    </div>
                                </div>
                                <div>
                                    <div class="form-group d-flex" style="width: 750px">
                                        <div class="col-sm-6 d-flex">
                                            <input type="text" name="txtPrecio" value="${producto.getPrecioProducto()}" class="form-control" placeholder="Q0.00"
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" name="txtCantidad" value="1" class="form-control">
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" name="txtStock" value="${producto.getStock()}" class="form-control" placeholder="stock">
                                        </div>
                                    </div>
                                </div>
                                <!--Agregar Registro-->
                                <div class="form-group">
                                    <div>
                                        <button type="submit" name="accion" value="Agregar" class="btn btn-outline-light">Agregar Producto</button>
                                    </div>
                                </div>
                            </div>         
                        </form>
                    </div>
            </div>
            <form style="display: block;margin-left: 40px; margin-top:15px; position: relative; left: 500px; top: -350px">

                <div style="width: 275px; margin-left: 575px "class="input-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text">Serie:</span>
                    </div>
                    <input type="text" aria-label="First name"  class="form-control">                 
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
                    <tbody> <%--queda pendiente :) --%>
                        <c:forEach var="list" items="${lista}">
                            <tr>
                                <td>${list.getItem()}</td>
                                <td>${list.getCodigoProducto()}</td>
                                <td>${list.getDescripcionProd()}</td>
                                <td>${list.getMonto()}</td> 
                                <td>${list.getCantidad()}</td>
                                <td>${list.getSubTotal()}</td>
                                <td align="center">
                                    <button type="button" class="btn btn-outline-light">Editar</button>
                                    <button type="button" class="btn btn-outline-dark">Eliminar</button>
                                </td>
                            </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div style="display: flex">
                    <input type="submit" name="accion" value="Generar Venta" class="btn btn-outline-light">
                    <input style="margin-left: 15px" type="submit" name="accion" value="Cancelar" class="btn btn-outline-dark">
                    <input style="margin-left: 420px" type="text" readonly="readonly" value="${totalPagar}" class="input-group-text" placeholder="Q.00.00">
                </div>
            </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
