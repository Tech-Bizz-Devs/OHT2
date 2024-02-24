/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package EMS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author MyPC
 */
class Auditdata {
    
    public static void auditdata(String username, String action)throws ClassNotFoundException, SQLException{
        try (Connection conn = db.java_db(); 
            PreparedStatement ps = conn.prepareStatement("INSERT INTO audit_table ( username, action) VALUES (?,?)")) {
            ps.setString(1, username);
            ps.setString(2, action);
            System.out.println(username+" , "+action);
            ps.executeUpdate();
        }
    }
}
