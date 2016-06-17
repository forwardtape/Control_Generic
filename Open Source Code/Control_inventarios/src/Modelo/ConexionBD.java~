package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JOptionPane;

public class ConexionBD {
    private static String     bd   ="Control_almacen";
    private static String     user ="root";
    private static String     pass ="Luisfeponna1";
    private static String     url  ="jdbc:mysql://localhost/"+bd;
    private static Connection con;
	
	    
    public static Connection getConexion()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");	            
            con = DriverManager.getConnection(url, user, pass);
            //JOptionPane.showMessageDialog(null,"Conectado ");
        }catch(Exception e){
	    JOptionPane.showMessageDialog(null,"Error De Conexion "+ e);
	}
	return con;
    }
        public static void desconecta(){
        con = null;
    }
}
