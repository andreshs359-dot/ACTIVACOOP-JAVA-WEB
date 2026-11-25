package com.activacoop;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EventoDAO {

    public void registrar(Evento evento) throws SQLException {

        String sql = """
            INSERT INTO eventos (nombre, fecha, lugar, cupos)
            VALUES (?, ?, ?, ?)
            """;

        try (Connection conexion = ConexionBD.obtenerConexion();
             PreparedStatement ps = conexion.prepareStatement(sql)) {

            ps.setString(1, evento.getNombre());
            ps.setDate(2, Date.valueOf(evento.getFecha()));
            ps.setString(3, evento.getLugar());
            ps.setInt(4, evento.getCupos());

            ps.executeUpdate();
        }
    }

    public List<Evento> listar() throws SQLException {

        List<Evento> eventos = new ArrayList<>();

        String sql = """
            SELECT id, nombre, fecha, lugar, cupos
            FROM eventos
            ORDER BY id DESC
            """;

        try (Connection conexion = ConexionBD.obtenerConexion();
             PreparedStatement ps = conexion.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {

                Evento evento = new Evento(
                    rs.getInt("id"),
                    rs.getString("nombre"),
                    rs.getDate("fecha").toLocalDate(),
                    rs.getString("lugar"),
                    rs.getInt("cupos")
                );

                eventos.add(evento);
            }
        }

        return eventos;
    }
}
