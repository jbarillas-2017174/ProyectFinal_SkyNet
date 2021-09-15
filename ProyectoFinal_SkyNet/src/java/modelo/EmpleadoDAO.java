
package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class EmpleadoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    // Valida
    public Empleado validar(String User, String DPIEmpleado){
        Empleado empleado = new Empleado();

        String sql = "select * from empleado where user = ? and DPIEmpleado = ?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, User);
            ps.setString(2, DPIEmpleado);
            rs = ps.executeQuery();
            while(rs.next()){
                empleado.setCodigoEmpleado(rs.getInt("codigoEmpleado"));
                empleado.setDPIEmpleado(rs.getString("DPIEmpleado"));
                empleado.setNombreEmpleado(rs.getString("nombreEmpleado"));
                empleado.setUser(rs.getString("user"));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return empleado;
    }

     //MÉTODO LISTAR.
    public List listar() {
       String sql = "SELECT * FROM Empleado";
       List<Empleado> listaEmpleado = new ArrayList<>();
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           rs = ps.executeQuery();
           while(rs.next()){
               Empleado emp = new Empleado();
               emp.setCodigoEmpleado(rs.getInt(1));
               emp.setDPIEmpleado(rs.getString(2));
               emp.setNombreEmpleado(rs.getString(3));
               emp.setTelefonoEmpleado(rs.getString(4));
               emp.setEstadoEmpleado(rs.getString(5));
               emp.setUser(rs.getString(6));
               listaEmpleado.add(emp);
           }
           
           
       }catch(Exception e){
           e.printStackTrace();
       }
       return listaEmpleado;
    }
   
     //MÉTODO AGREGAR
    public int agregar (Empleado em){
       String sql = "INSERT INTO Empleado(DPIEmpleado,nombreEmpleado,telefonoEmpleado,estadoEmpleado,user) VALUES (?,?,?,?,?)";
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           ps.setString(1, em.getDPIEmpleado());
           ps.setString(2, em.getNombreEmpleado());
           ps.setString(3, em.getTelefonoEmpleado());
           ps.setString(4, em.getEstadoEmpleado());
           ps.setString(5, em.getUser());
           ps.executeUpdate();
           
       }catch(Exception e){
           e.printStackTrace();
       }
       return resp;
   }
   
     //BUSCAR POR CÓDIGO PARA PODER EDITAR.
    public Empleado listarCodigoEmpleado(int id){
       Empleado em = new Empleado();
       String sql = "SELECT * FROM Empleado WHERE codigoEmpleado = "+id;
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           rs = ps.executeQuery();
           while(rs.next()){
               em.setDPIEmpleado(rs.getString(2));
               em.setNombreEmpleado(rs.getString(3));
               em.setTelefonoEmpleado(rs.getString(4));
               em.setEstadoEmpleado(rs.getString(5));
               em.setUser(rs.getString(6));
           }
       }catch(Exception e){
           e.printStackTrace();
       }
       return em;
   }
     //MÉTODO PARA EDITAR.
    public int actualizar(Empleado emp){
       String sql = "UPDATE Empleado SET DPIEmpleado=?, nombreEmpleado=?, telefonoEmpleado=?, estadoEmpleado=?, user=? WHERE codigoEmpleado=?";
       try{
           con = cn.Conexion();
           ps = con.prepareStatement(sql);
           ps.setString(1, emp.getDPIEmpleado());
           ps.setString(2, emp.getNombreEmpleado());
           ps.setString(3, emp.getTelefonoEmpleado());
           ps.setString(4, emp.getEstadoEmpleado());
           ps.setString(5, emp.getUser());
           ps.setInt(6, emp.getCodigoEmpleado());
           ps.executeUpdate();
           
       }catch(Exception e){
           e.printStackTrace();
       }
       return resp;
   }
   
     //MÉTODO PARA ELIMINAR.
    public void eliminar(int id){
        String sql = "DELETE FROM Empleado WHERE codigoEmpleado = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
   }
    
   
}