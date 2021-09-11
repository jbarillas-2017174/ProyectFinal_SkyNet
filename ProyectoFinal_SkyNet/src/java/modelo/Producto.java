/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

public class Producto {
    private int codigoProducto ;
    private String nombresProducto;
    private double precioProducto;
    private int stock;
    private String estadoProducto;

    public Producto() {
    }

    public Producto(int codigoProducto, String nombresProducto, double precioProducto, int stock, String estadoProducto) {
        this.codigoProducto = codigoProducto;
        this.nombresProducto = nombresProducto;
        this.precioProducto = precioProducto;
        this.stock = stock;
        this.estadoProducto = estadoProducto;
    }

    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public String getNombresProducto() {
        return nombresProducto;
    }

    public void setNombresProducto(String nombresProducto) {
        this.nombresProducto = nombresProducto;
    }

    public double getPrecioProducto() {
        return precioProducto;
    }

    public void setPrecioProducto(double precioProducto) {
        this.precioProducto = precioProducto;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getEstadoProducto() {
        return estadoProducto;
    }

    public void setEstadoProducto(String estadoProducto) {
        this.estadoProducto = estadoProducto;
    }
    
    
}
