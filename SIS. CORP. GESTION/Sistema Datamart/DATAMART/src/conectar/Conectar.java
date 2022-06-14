/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package conectar;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conectar {

    Connection conex;

    public Conectar() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conex = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/data_mudanza", "root", "123456");
        } catch (Exception e) {
            System.err.print(e);
        }
    }

    public Connection getConnection() {
        return conex;
    }

}
