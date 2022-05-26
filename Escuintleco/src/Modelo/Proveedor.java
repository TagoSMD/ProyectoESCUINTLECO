/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author TagoKG
 */
public class Proveedor {
  private String  No_documento;
private String  cod_tipo_documento ;
private String  Nombre ;
private String  Apellido ;
private String  Nombre_comercial ;
private String  direccion ;
private String  cod_ciudad;
private String  Telefono ;

    public Proveedor() {
    }

    public Proveedor(String No_documento, String cod_tipo_documento, String Nombre, String Apellido, String Nombre_comercial, String direccion, String cod_ciudad, String Telefono) {
        this.No_documento = No_documento;
        this.cod_tipo_documento = cod_tipo_documento;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Nombre_comercial = Nombre_comercial;
        this.direccion = direccion;
        this.cod_ciudad = cod_ciudad;
        this.Telefono = Telefono;
    }

    public String getNo_documento() {
        return No_documento;
    }

    public void setNo_documento(String No_documento) {
        this.No_documento = No_documento;
    }

    public String getCod_tipo_documento() {
        return cod_tipo_documento;
    }

    public void setCod_tipo_documento(String cod_tipo_documento) {
        this.cod_tipo_documento = cod_tipo_documento;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getNombre_comercial() {
        return Nombre_comercial;
    }

    public void setNombre_comercial(String Nombre_comercial) {
        this.Nombre_comercial = Nombre_comercial;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getCod_ciudad() {
        return cod_ciudad;
    }

    public void setCod_ciudad(String cod_ciudad) {
        this.cod_ciudad = cod_ciudad;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    @Override
    public String toString() {
        return "Proveedor{" + "No_documento=" + No_documento + ", cod_tipo_documento=" + cod_tipo_documento + ", Nombre=" + Nombre + ", Apellido=" + Apellido + ", Nombre_comercial=" + Nombre_comercial + ", direccion=" + direccion + ", cod_ciudad=" + cod_ciudad + ", Telefono=" + Telefono + '}';
    }


    
    
}
