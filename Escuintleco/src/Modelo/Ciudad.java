/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author TagoKG
 */
public class Ciudad {
    private String Codigo_ciudad;
    private String Nombre_ciudad;

    public Ciudad() {
    }

    public Ciudad(String Codigo_ciudad, String Nombre_ciudad) {
        this.Codigo_ciudad = Codigo_ciudad;
        this.Nombre_ciudad = Nombre_ciudad;
    }

    public String getCodigo_ciudad() {
        return Codigo_ciudad;
    }

    public void setCodigo_ciudad(String Codigo_ciudad) {
        this.Codigo_ciudad = Codigo_ciudad;
    }

    public String getNombre_ciudad() {
        return Nombre_ciudad;
    }

    public void setNombre_ciudad(String Nombre_ciudad) {
        this.Nombre_ciudad = Nombre_ciudad;
    }

    @Override
    public String toString() {
        return "Ciudad{" + "Codigo_ciudad=" + Codigo_ciudad + ", Nombre_ciudad=" + Nombre_ciudad + '}';
    }
    
    
    
}
