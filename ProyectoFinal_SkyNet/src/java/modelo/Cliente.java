
package modelo;


public class Cliente {
    private int codigoCliente;
    private String DPICliente;
    private String nombreCliente;
    private String direccionCliente;
    private String estadoCliente;

    public Cliente() {
    }

    public Cliente(int codigoCliente, String DPICliente, String nombreCliente, String direccionCliente, String estadoCliente) {
        this.codigoCliente = codigoCliente;
        this.DPICliente = DPICliente;
        this.nombreCliente = nombreCliente;
        this.direccionCliente = direccionCliente;
        this.estadoCliente = estadoCliente;
    }

    public int getCodigoCliente() {
        return codigoCliente;
    }

    public void setCodigoCliente(int codigoCliente) {
        this.codigoCliente = codigoCliente;
    }

    public String getDPICliente() {
        return DPICliente;
    }

    public void setDPICliente(String DPICliente) {
        this.DPICliente = DPICliente;
    }

    public String getNombreCliente() {
        return nombreCliente;
    }

    public void setNombreCliente(String nombreCliente) {
        this.nombreCliente = nombreCliente;
    }

    public String getDireccionCliente() {
        return direccionCliente;
    }

    public void setDireccionCliente(String direccionCliente) {
        this.direccionCliente = direccionCliente;
    }

    public String getEstadoCliente() {
        return estadoCliente;
    }

    public void setEstadoCliente(String estadoCliente) {
        this.estadoCliente = estadoCliente;
    }
    
    
}
