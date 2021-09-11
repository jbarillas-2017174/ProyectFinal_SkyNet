package modelo;

import java.util.Date;

public class Venta {
    private int codigoVenta;
    private int codigoCliente;
    private int codigoEmpleado;
    private String numeroSerie;
    private Date fechaVenta;
    private double monto;
    private String estadoVenta;

    public Venta() {
    }

    public Venta(int codigoVenta, int codigoCliente, int codigoEmpleado, String numeroSerie, Date fechaVenta, double monto, String estadoVenta) {
        this.codigoVenta = codigoVenta;
        this.codigoCliente = codigoCliente;
        this.codigoEmpleado = codigoEmpleado;
        this.numeroSerie = numeroSerie;
        this.fechaVenta = fechaVenta;
        this.monto = monto;
        this.estadoVenta = estadoVenta;
    }

    public int getCodigoVenta() {
        return codigoVenta;
    }

    public void setCodigoVenta(int codigoVenta) {
        this.codigoVenta = codigoVenta;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public int getCodigoEmpleado() {
        return codigoEmpleado;
    }

    public void setCodigoEmpleado(int codigoEmpleado) {
        this.codigoEmpleado = codigoEmpleado;
    }

    public String getNumeroSerie() {
        return numeroSerie;
    }

    public void setNumeroSerie(String numeroSerie) {
        this.numeroSerie = numeroSerie;
    }

    public Date getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(Date fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public double getMonto() {
        return monto;
    }

    public void setMonto(double monto) {
        this.monto = monto;
    }

    public String getEstadoVenta() {
        return estadoVenta;
    }

    public void setEstadoVenta(String estadoVenta) {
        this.estadoVenta = estadoVenta;
    }
    
    
    
}
