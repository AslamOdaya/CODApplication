/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package codapplication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Aslam
 */
public class DBConnectivity {

    private Connection con;
 
    public DBConnectivity() {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/coddatabase", "root", "");
          

        } catch (Exception ex) {
            System.out.println("Error: " + ex);

        }
        

    }

    public Connection getCon() {
        return con;
    }
    
    
}
