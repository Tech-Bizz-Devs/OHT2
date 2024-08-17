
package EMS;
import java.sql.*;
/**
 *
 * @author MyPC
 */
public class DeleteDataBase {

    public static String deleteData(String id)throws ClassNotFoundException,SQLException {
    Connection conn = db.java_db();
    
    
        

        PreparedStatement ps = conn.prepareStatement("delete from employee where id=?");
        ps.setString(1, id);
        System.out.println(id);
        int norows = ps.executeUpdate();
        System.out.println("No of rows affected="+norows);
            ps.close();
        
        
        conn.close();
        if(norows != 0){
        return "done";
    }
        else{
        return "error";
        }
    }
}
