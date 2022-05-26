/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


package Controlador;


import Modelo.Cliente;
import facturacion.conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;


/**
 *
 * @author SANTIAGO MARTINEZ DIAZ 9960-19-13847
 */
public class ClienteDAO {
      conexion cn=new conexion();
    Connection cc=cn.conectado();
  private static final String SQL_QUERY =  ("{call insertar(?,?,?,?,?,?,?)}");
    
  public int insert(Cliente Cliente) {
        Connection conn = null;
        PreparedStatement stmt = null;
        int rows = 0;
        try {
         
            stmt = cc.prepareStatement(SQL_QUERY);
            stmt.setString(1, Cliente.getDocumento());
            stmt.setString(2, Cliente.getCod_tipo_documento());
            stmt.setString(3, Cliente.getNombres());
            stmt.setString(4, Cliente.getApellidos());
            stmt.setString(5, Cliente.getDirecion());
            stmt.setString(6, Cliente.getCod_ciudad());
            stmt.setString(7, Cliente.getTelefono());
            
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
