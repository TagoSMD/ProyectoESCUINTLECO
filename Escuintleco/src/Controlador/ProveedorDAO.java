/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Modelo.Proveedor;
import facturacion.conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Santiago Martinez Diaz
 */
public class ProveedorDAO {
    
      conexion cn=new conexion();
    Connection cc=cn.conectado();
  private static final String SQL_QUERY =  ("{call NuevoProveedor(?,?,?,?,?,?,?,?)}");
    
  public int insert(Proveedor Proveedor) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
         
            stmt = cc.prepareStatement(SQL_QUERY);
            stmt.setString(1, Proveedor.getNo_documento());
            stmt.setString(2, Proveedor.getCod_tipo_documento());
            stmt.setString(3, Proveedor.getNombre());
            stmt.setString(4, Proveedor.getApellido());
            stmt.setString(5, Proveedor.getNombre_comercial());
            stmt.setString(6, Proveedor.getDireccion());
            stmt.setString(7, Proveedor.getCod_ciudad());
            stmt.setString(8, Proveedor.getTelefono());
            
             JOptionPane.showMessageDialog(null, "Registro exitoso");
            System.out.println("ejecutando query:" + SQL_QUERY);
            rows = stmt.executeUpdate();
            System.out.println("Registros afectados:" + rows);
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        } finally {
           
            
        }

        return rows;
    }

      
}
