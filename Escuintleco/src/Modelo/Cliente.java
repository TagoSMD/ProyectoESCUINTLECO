/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author TagoKG
 */
public class Cliente {
    private String Documento;
    private String Cod_tipo_documento;
    private String Nombres;
    private String Apellidos;
    private String Direcion;
    private String cod_ciudad;
    private String Telefono;

    public Cliente() {
    }

    public Cliente(String Documento, String Cod_tipo_documento, String Nombres, String Apellidos, String Direcion, String cod_ciudad, String Telefono) {
        this.Documento = Documento;
        this.Cod_tipo_documento = Cod_tipo_documento;
        this.Nombres = Nombres;
        this.Apellidos = Apellidos;
        this.Direcion = Direcion;
        this.cod_ciudad = cod_ciudad;
        this.Telefono = Telefono;
    }

    public String getDocumento() {
        return Documento;
    }

    public void setDocumento(String Documento) {
        this.Documento = Documento;
    }

    public String getCod_tipo_documento() {
        return Cod_tipo_documento;
    }

    public void setCod_tipo_documento(String Cod_tipo_documento) {
        this.Cod_tipo_documento = Cod_tipo_documento;
    }

    public String getNombres() {
        return Nombres;
    }

    public void setNombres(String Nombres) {
        this.Nombres = Nombres;
    }

    public String getApellidos() {
        return Apellidos;
    }

    public void setApellidos(String Apellidos) {
        this.Apellidos = Apellidos;
    }

    public String getDirecion() {
        return Direcion;
    }

    public void setDirecion(String Direcion) {
        this.Direcion = Direcion;
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
        return "Cliente{" + "Documento=" + Documento + ", Cod_tipo_documento=" + Cod_tipo_documento + ", Nombres=" + Nombres + ", Apellidos=" + Apellidos + ", Direcion=" + Direcion + ", cod_ciudad=" + cod_ciudad + ", Telefono=" + Telefono + '}';
    }

    
    
}

