package modelo;

import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


    public class ClienteDAO {
        Conexion cn = new Conexion();
        Connection con;
        PreparedStatement ps;
        ResultSet rs;
        int resp;
        
        //OPERACIONES CRUD.
    
        //MÉTODO LISTAR.
    public List listar() {
        String sql = "SELECT * FROM Cliente";
        List<Cliente> listaCliente =  new ArrayList<>();
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                Cliente cln = new Cliente();
                cln.setCodigoCliente(rs.getInt(1));
                cln.setDPICliente(rs.getString(2));
                cln.setNombreCliente(rs.getString(3));
                cln.setDireccionCliente(rs.getString(4));
                cln.setEstadoCliente(rs.getString(5));
                listaCliente.add(cln);
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return listaCliente;
    }
    
        //MÉTODO AGREGAR
    public int agregar (Cliente cl) {
        String sql = "INSERT INTO Cliente (DPICliente, nombreCliente, direccionCliente, estadoCliente) VALUES (?, ?, ?, ?)";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cl.getDPICliente());
            ps.setString(2, cl.getNombreCliente());
            ps.setString(3, cl.getDireccionCliente());
            ps.setString(4, cl.getEstadoCliente());
            ps.executeUpdate();
        }catch(Exception e) {
        e.printStackTrace();
        }
        return resp;
    }
    
        //BUSCAR POR CÓDIGO PARA PODER EDITAR.
    public Cliente listarCodigoCliente(int id) {
        Cliente cl = new Cliente();
        String sql = "SELECT * FROM Cliente WHERE codigoCliente = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()) {
                cl.setDPICliente(rs.getString(2));
                cl.setNombreCliente(rs.getString(3));
                cl.setDireccionCliente(rs.getString(4));
                cl.setEstadoCliente(rs.getString(5));
            }
        }catch (Exception e) {
        e.printStackTrace();
        }
        return cl;
    }
    
        //MÉTODO PARA EDITAR.
    public int actualizar(Cliente cln) {
        String sql = "UPDATE Cliente SET DPICliente=?, nombreCliente=?, direccionCliente=?, estadoCliente=? WHERE  codigoCliente=?";
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, cln.getDPICliente());
            ps.setString(2, cln.getNombreCliente());
            ps.setString(3, cln.getDireccionCliente());
            ps.setString(4, cln.getEstadoCliente());
            ps.setInt(5, cln.getCodigoCliente());
            ps.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }
        return resp;
    }
    
        //MÉTODO PARA ELIMINAR.
    public void eliminar (int id) {
        String sql = "DELETE FROM Cliente WHERE codigoCliente = "+id;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    
    public Cliente buscar(String dpi){
        Cliente cl = new Cliente();
        String sql = "select * from Cliente where DPICliente ="+dpi;
        try{
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                cl.setCodigoCliente(rs.getInt(1));
                cl.setDPICliente(rs.getString(2));
                cl.setNombreCliente(rs.getString(3));
                cl.setDireccionCliente(rs.getString(4));
                cl.setEstadoCliente(rs.getString(5));
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        return cl;
    }
    
}
