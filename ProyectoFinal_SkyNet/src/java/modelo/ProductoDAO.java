package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductoDAO {
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int resp;
    
    //Operaciones
    //Listar
    
    public List listar(){
        String sql= "SELECT * FROM Producto";
        List<Producto> listaProducto = new ArrayList<>();
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Producto pro = new Producto();
                pro.setCodigoProducto(rs.getInt(1));
                pro.setNombresProducto(rs.getString(2));
                pro.setPrecioProducto(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.setEstadoProducto(rs.getString(5));
                listaProducto.add(pro);
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return listaProducto;
    }
    
    //Agregar
    public int agregar(Producto pro){
        String sql = "INSERT INTO Producto (nombresProducto, precioProducto, stock, estadoProducto) VALUES (?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombresProducto());
            ps.setDouble(2, pro.getPrecioProducto());
            ps.setInt(3, pro.getStock());
            ps.setString(4, pro.getEstadoProducto());
            ps.execute();
        }
        catch(Exception e){
            e.printStackTrace();
        }
         return resp;
    }
    //Buscar identificacion de campo
    public Producto listarCodigoProducto(int id){
        Producto pro = new Producto();
        String sql = "SELECT * FROM Producto WHERE codigoProducto = "+id;
        try{
            con=cn.Conexion();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                pro.setCodigoProducto(rs.getInt(1));
                pro.setNombresProducto(rs.getString(2));
                pro.setPrecioProducto(rs.getDouble(3));
                pro.setStock(rs.getInt(4));
                pro.setEstadoProducto(rs.getString(5));
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return pro;
    }
    
    //Editar
    public int actualizar(Producto pro){
        String sql = "UPDATE Producto SET nombresProducto=?, precioProducto=?, stock=?,estadoProducto=? WHERE codigoProducto=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, pro.getNombresProducto());
            ps.setDouble(2, pro.getPrecioProducto());
            ps.setInt(3, pro.getStock());
            ps.setString(4, pro.getEstadoProducto());
            ps.setInt(5, pro.getCodigoProducto());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
        return resp;
    }
    
    //Eliminar
    public void eliminar(int id){
        String sql = "DELETE FROM Producto WHERE codigoProducto = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}

    