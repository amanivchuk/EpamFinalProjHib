package ua.nure.manivchuk.databace;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by Lenovo on 3/16/2018.
 */
public class Manager {
    private static Connection conn;
    private static InitialContext ic;
    private static DataSource ds;

    public static Connection getConnection(){
        Connection conn = null;

         try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        try {
            conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/autorace","root", "root");
            return conn;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return conn;
    }
}
