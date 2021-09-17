/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.Cliente;
import modelo.ClienteDAO;
import modelo.Empleado;
import modelo.EmpleadoDAO;
import modelo.Producto;
import modelo.ProductoDAO;
import modelo.Venta;

/**
 *
 * @author FAM CASTELLANOS
 */
public class Controlador extends HttpServlet {
    Empleado empleado = new Empleado();
    EmpleadoDAO empleadoDao = new EmpleadoDAO();
    Producto producto = new Producto();
    ProductoDAO productoDao = new ProductoDAO();
    Cliente cliente = new Cliente();
    ClienteDAO clienteDao = new ClienteDAO();
    Venta venta = new Venta();
    List<Venta> lista = new ArrayList<>();
    int item = 0;
    int codPro, cantid;
    int codCliente;
    int codEmpleado;
    int codVenta;
    int codProducto;
    String descripcion;
    Double precio, subTotal;
    Double totalPagar;
   
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        if(menu.equals("Principal")){
            request.getRequestDispatcher("inicio.jsp").forward(request, response);
            
            //Metodos de Producto
        }else if(menu.equals("Producto")){
            switch(accion){
                case "Listar":
                    List listaProducto = productoDao.listar();
                    request.setAttribute("producto", listaProducto);
                    break;
                case "Agregar":
                    String nombresProducto = request.getParameter("txtNombreProducto");
                    String precioProducto = request.getParameter("txtPrecio"); 
                    String stock = request.getParameter("txtStock");
                    String estado = request.getParameter("txtEstado");
                    producto.setNombresProducto(nombresProducto);
                    producto.setPrecioProducto(Double.parseDouble(precioProducto));
                    producto.setStock(Integer.parseInt(stock));
                    producto.setEstadoProducto(estado);
                    productoDao.agregar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    codProducto = Integer.parseInt(request.getParameter("codigoProducto"));
                    Producto p = productoDao.listarCodigoProducto(codProducto);
                    request.setAttribute("Producto", p);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String nameProd = request.getParameter("txtNombreProducto");
                    String productoPrecio = request.getParameter("txtPrecio");
                    String stoc = request.getParameter("txtStock");
                    String est = request.getParameter("txtEstado");
                    producto.setNombresProducto(nameProd);
                    producto.setPrecioProducto(Double.parseDouble(productoPrecio));
                    producto.setStock(Integer.parseInt(stoc));
                    producto.setEstadoProducto(est);
                    producto.setCodigoProducto(codProducto);
                    productoDao.actualizar(producto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codProducto = Integer.parseInt(request.getParameter("codigoProducto"));
                    productoDao.eliminar(codProducto);
                    request.getRequestDispatcher("Controlador?menu=Producto&accion=Listar").forward(request, response);
                    break;
            }
            request.getRequestDispatcher("producto.jsp").forward(request, response);
            
            //Metodos de Cliente
        }else if(menu.equals("Cliente")){
            switch(accion){
                case "Listar":
                    List listaCliente = clienteDao.listar();
                    request.setAttribute("cliente", listaCliente);
                    break;
                case "Agregar":
                    String DPICliente = request.getParameter("txtDPICliente");
                    String nombresCliente = request.getParameter("txtNombresCliente");
                    String direccionCliente = request.getParameter("txtTelefonoCliente");
                    String estadoCliente = request.getParameter("txtEstadoCliente");
                    cliente.setDPICliente(DPICliente);
                    cliente.setNombreCliente(nombresCliente);
                    cliente.setDireccionCliente(direccionCliente);
                    cliente.setEstadoCliente(estadoCliente);
                    clienteDao.agregar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break ;
                case "Editar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    Cliente c = clienteDao.listarCodigoCliente(codCliente);
                    request.setAttribute("Cliente", c);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break ;
                case "Actualizar":
                    String DPIClient = request.getParameter("txtDPICliente");
                    String nombreCliente = request.getParameter("txtNombresCliente");
                    String direccionClient = request.getParameter("txtTelefonoCliente");
                    String estCliente = request.getParameter("txtEstadoCliente");
                    cliente.setDPICliente(DPIClient);
                    cliente.setNombreCliente(nombreCliente);
                    cliente.setDireccionCliente(direccionClient);
                    cliente.setEstadoCliente(estCliente);
                    cliente.setCodigoCliente(codCliente);
                    clienteDao.actualizar(cliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break ;
                case "Eliminar":
                    codCliente = Integer.parseInt(request.getParameter("codigoCliente"));
                    clienteDao.eliminar(codCliente);
                    request.getRequestDispatcher("Controlador?menu=Cliente&accion=Listar").forward(request, response);
                    break ;
            }
            request.getRequestDispatcher("cliente.jsp").forward(request, response);
            
            //Metodos de empleado
        }else if(menu.equals("Empleado")){
            switch(accion){
                case "Listar":
                    List listaEmpleados = empleadoDao.listar();
                    request.setAttribute("empleado", listaEmpleados);
                    break;
                case "Agregar":
                    String DPI = request.getParameter("txtDPIEmpleado");
                    String nombres = request.getParameter("txtNombresEmpleado");
                    String telefono = request.getParameter("txtTelefonoEmpleado");
                    String est = request.getParameter("txtEstado");
                    String user = request.getParameter("txtUsuario");
                    empleado.setDPIEmpleado(DPI);
                    empleado.setNombreEmpleado(nombres);
                    empleado.setTelefonoEmpleado(telefono);
                    empleado.setEstadoEmpleado(est);
                    empleado.setUser(user);
                    empleadoDao.agregar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Editar":
                    codEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));
                    Empleado e = empleadoDao.listarCodigoEmpleado(codEmpleado);
                    request.setAttribute("Empleado", e);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Actualizar":
                    String DPIEmp = request.getParameter("txtDPIEmpleado");
                    String nombre = request.getParameter("txtNombresEmpleado");
                    String tel = request.getParameter("txtTelefonoEmpleado");
                    String estado = request.getParameter("txtEstado");
                    String usuario = request.getParameter("txtUsuario");
                    empleado.setDPIEmpleado(DPIEmp);
                    empleado.setNombreEmpleado(nombre);
                    empleado.setTelefonoEmpleado(tel);
                    empleado.setEstadoEmpleado(estado);
                    empleado.setUser(usuario);
                    empleado.setCodigoEmpleado(codEmpleado);
                    empleadoDao.actualizar(empleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                case "Eliminar":
                    codEmpleado = Integer.parseInt(request.getParameter("codigoEmpleado"));
                    empleadoDao.eliminar(codEmpleado);
                    request.getRequestDispatcher("Controlador?menu=Empleado&accion=Listar").forward(request, response);
                    break;
                     
            }
            
            request.getRequestDispatcher("empleado.jsp").forward(request, response);
            
            //Metodos de Venta
        }else if(menu.equals("Venta")){
            switch(accion){
                case "BuscarCliente":
                    String dpi = request.getParameter("txtCodigoCliente");
                    cliente.setDPICliente(dpi);
                    cliente = clienteDao.buscar(dpi);
                    request.setAttribute("cliente", cliente);
                    break;
                case "BuscarProducto":
                    codProducto = Integer.parseInt(request.getParameter("txtCodigoProducto"));
                    producto = productoDao.listarCodigoProducto(codProducto);
                    request.setAttribute("producto", producto);
                    request.setAttribute("lista", lista);
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("cliente", cliente);
                    break;
                case "Agregar":
                    request.setAttribute("cliente", cliente);
                    totalPagar = 0.0;
                    item = item + 1;
                    codPro = producto.getCodigoProducto();
                    descripcion = request.getParameter("txtNombresProducto");
                    precio = Double.parseDouble(request.getParameter("txtPrecio"));
                    cantid = Integer.parseInt(request.getParameter("txtCantidad"));
                    subTotal = precio * cantid;
                    venta = new Venta();
                    venta.setItem(item);
                    venta.setCodigoProducto(codProducto);
                    venta.setDescripcionProd(descripcion);
                    venta.setMonto(precio);
                    venta.setCantidad(cantid);
                    venta.setSubTotal(subTotal);
                    lista.add(venta);
                    for (int i=0; i< lista.size(); i++){
                        totalPagar = totalPagar + lista.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("lista", lista);
                    
                    break;
            }
            request.getRequestDispatcher("nuevaVenta.jsp").forward(request, response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}