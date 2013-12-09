package Conexion;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author jorge
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.Map;

public class conexion {

    public ResultSet rs = null;
    public Connection con = null;
    public PreparedStatement s = null;
    
   public conexion() throws SQLException
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arcamac","root","123456");
                        
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
   }
    
    public void insertQuery(Map<String, String[]>datos, String tabla) throws SQLException
    {
        String campos = "INSERT INTO " + tabla + "(";
        String valores = " values(";
        int    cont  = 0;
    
        for(String param : datos.keySet())
        {
            if(cont  != datos.size())
            {
                campos  += param + ",";
                valores += "?,";
            }
            else
            {
                campos  += param + ")";
                valores += "?)";
            }  
        }
        
        campos += valores;
        System.out.println(campos);
        // s = con.prepareStatement(campos);
    }
    public void setRS(String query) 
    {
        try {
            rs = s.executeQuery(query);
        } catch (SQLException ex) {
            Logger.getLogger(conexion.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public ResultSet getRs()
    {
        if (rs != null)
        {
            return rs;
        }
        else
            return null;
    }
    
    public boolean actualizar(String query) throws SQLException
    {
        try{
        s.executeUpdate(query);
        return true;
        }
        catch (Exception e)
        {
            return false;
        }
        
    }
    
    public void cerrarConexion() throws SQLException
    {
        con.close();
    }
    
}
