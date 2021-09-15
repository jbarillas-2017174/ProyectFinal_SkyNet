package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class VentaDAO {
        Conexion cn = new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        int resp;
        
        
        // Método Listar
    public List listar() {
        String sql = "SELECT * FROM Ventas";
        List<Venta> listaVenta =  new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Venta vnt = new Venta();
                vnt.setCodigoVenta(rs.getInt(1));
                vnt.setCodigoCliente(rs.getInt(2));
                vnt.setCodigoEmpleado(rs.getInt(3));
                vnt.setNumeroSerie(rs.getString(4));
                vnt.setFechaVenta(rs.getDate(5));
                vnt.setMonto(rs.getDouble(6));
                vnt.setEstadoVenta(rs.getString(7));
                listaVenta.add(vnt);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return listaVenta;
    }
    
    //MÉTODO AGREGAR
    public int agregar (Venta vnt) {
        String sql = "INSERT INTO Ventas (codigoCliente, codigoEmpleado, numeroSerie, fechaVenta, monto, estadoVenta) VALUES (?,?,?,?,?,?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, vnt.getCodigoCliente());
            ps.setInt(2, vnt.getCodigoEmpleado());
            ps.setString(3, vnt.getNumeroSerie());
            ps.setDate(4, (Date) vnt.getFechaVenta());
            ps.setDouble(5, vnt.getMonto());
            ps.setString(6, vnt.getEstadoVenta());
            ps.executeUpdate();
        }catch(Exception e) {
        e.printStackTrace();
        }
        return resp;
    }    
    
    //MÉTODO PARA EDITAR.
    public int actualizar(Venta vnt) {
        String sql = "UPDATE Ventas SET codigoEmpleado=?, numeroSerie=?, fechaVenta=?, monto=?, estadoVenta=? WHERE codigoVenta=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, vnt.getCodigoCliente());
            ps.setInt(2, vnt.getCodigoEmpleado());
            ps.setString(3, vnt.getNumeroSerie());
            ps.setDate(4, (Date) vnt.getFechaVenta());
            ps.setDouble(5, vnt.getMonto());
            ps.setString(6, vnt.getEstadoVenta());
            ps.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }

        //MÉTODO PARA ELIMINAR.
    public void eliminar (int id) {
        String sql = "DELETE FROM Ventas WHERE codigoVenta = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
}

