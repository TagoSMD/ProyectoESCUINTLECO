/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author TagoKG
 */
public class Articulo {
    
private String id_articulo;
private String descripcion;
private String precio_venta;
private String precio_costo;
private String stock;
private String cod_tipo_articulo;
private String cod_proveedor;
private String fecha_ingreso;

    public Articulo() {
    }

    public Articulo(String id_articulo, String descripcion, String precio_venta, String precio_costo, String stock, String cod_tipo_articulo, String cod_proveedor, String fecha_ingreso) {
        this.id_articulo = id_articulo;
        this.descripcion = descripcion;
        this.precio_venta = precio_venta;
        this.precio_costo = precio_costo;
        this.stock = stock;
        this.cod_tipo_articulo = cod_tipo_articulo;
        this.cod_proveedor = cod_proveedor;
        this.fecha_ingreso = fecha_ingreso;
    }

    public String getId_articulo() {
        return id_articulo;
    }

    public void setId_articulo(String id_articulo) {
        this.id_articulo = id_articulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPrecio_venta() {
        return precio_venta;
    }

    public void setPrecio_venta(String precio_venta) {
        this.precio_venta = precio_venta;
    }

    public String getPrecio_costo() {
        return precio_costo;
    }

    public void setPrecio_costo(String precio_costo) {
        this.precio_costo = precio_costo;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public String getCod_tipo_articulo() {
        return cod_tipo_articulo;
    }

    public void setCod_tipo_articulo(String cod_tipo_articulo) {
        this.cod_tipo_articulo = cod_tipo_articulo;
    }

    public String getCod_proveedor() {
        return cod_proveedor;
    }

    public void setCod_proveedor(String cod_proveedor) {
        this.cod_proveedor = cod_proveedor;
    }

    public String getFecha_ingreso() {
        return fecha_ingreso;
    }

    public void setFecha_ingreso(String fecha_ingreso) {
        this.fecha_ingreso = fecha_ingreso;
    }

    @Override
    public String toString() {
        return "Articulo{" + "id_articulo=" + id_articulo + ", descripcion=" + descripcion + ", precio_venta=" + precio_venta + ", precio_costo=" + precio_costo + ", stock=" + stock + ", cod_tipo_articulo=" + cod_tipo_articulo + ", cod_proveedor=" + cod_proveedor + ", fecha_ingreso=" + fecha_ingreso + '}';
    }
    

    
}
