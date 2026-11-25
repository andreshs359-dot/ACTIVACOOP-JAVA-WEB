package com.activacoop;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionBD {

    private static final String URL =
        "jdbc:mysql://localhost:3306/activacoop_java_practica";

    public static Connection obtenerConexion()
            throws SQLException {

        String usuario = System.getenv("DB_USER");
        String clave = System.getenv("DB_PASSWORD");

        if (usuario == null || clave == null) {
            throw new SQLException(
                "Configura DB_USER y DB_PASSWORD."
            );
        }

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException(
                "No se encontró el controlador JDBC de MySQL.", e
            );
        }

        return DriverManager.getConnection(
            URL, usuario, clave
        );
    }
}
