/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author TagoKG
 */
public class Factura {
    private String  Nnm_factura;
private String  cod_cliente ;
private String  Nombre_empleado ;
private String  Fecha_facturacion ;
private String  cod_formapago ;
private String  total_factura ;
private String  IVA;

    public Factura() {
    }

    public Factura(String Nnm_factura, String cod_cliente, String Nombre_empleado, String Fecha_facturacion, String cod_formapago, String total_factura, String IVA) {
        this.Nnm_factura = Nnm_factura;
        this.cod_cliente = cod_cliente;
        this.Nombre_empleado = Nombre_empleado;
        this.Fecha_facturacion = Fecha_facturacion;
        this.cod_formapago = cod_formapago;
        this.total_factura = total_factura;
        this.IVA = IVA;
    }

    public String getNnm_factura() {
        return Nnm_factura;
    }

    public void setNnm_factura(String Nnm_factura) {
        this.Nnm_factura = Nnm_factura;
    }

    public String getCod_cliente() {
        return cod_cliente;
    }

    public void setCod_cliente(String cod_cliente) {
        this.cod_cliente = cod_cliente;
    }

    public String getNombre_empleado() {
        return Nombre_empleado;
    }

    public void setNombre_empleado(String Nombre_empleado) {
        this.Nombre_empleado = Nombre_empleado;
    }

    public String getFecha_facturacion() {
        return Fecha_facturacion;
    }

    public void setFecha_facturacion(String Fecha_facturacion) {
        this.Fecha_facturacion = Fecha_facturacion;
    }

    public String getCod_formapago() {
        return cod_formapago;
    }

    public void setCod_formapago(String cod_formapago) {
        this.cod_formapago = cod_formapago;
    }

    public String getTotal_factura() {
        return total_factura;
    }

    public void setTotal_factura(String total_factura) {
        this.total_factura = total_factura;
    }

    public String getIVA() {
        return IVA;
    }

    public void setIVA(String IVA) {
        this.IVA = IVA;
    }

    @Override
    public String toString() {
        return "Factura{" + "Nnm_factura=" + Nnm_factura + ", cod_cliente=" + cod_cliente + ", Nombre_empleado=" + Nombre_empleado + ", Fecha_facturacion=" + Fecha_facturacion + ", cod_formapago=" + cod_formapago + ", total_factura=" + total_factura + ", IVA=" + IVA + '}';
    }


}
