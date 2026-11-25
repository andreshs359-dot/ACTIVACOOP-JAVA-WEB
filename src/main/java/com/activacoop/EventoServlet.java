package com.activacoop;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

@WebServlet("/eventos")
public class EventoServlet extends HttpServlet {

    private final EventoDAO eventoDAO = new EventoDAO();

    @Override
    protected void doGet(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        try {
            request.setAttribute(
                "eventos", eventoDAO.listar()
            );

            request.getRequestDispatcher("/listado.jsp")
                   .forward(request, response);

        } catch (SQLException e) {
            log("Error consultando eventos", e);
            response.sendError(
                HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
                "No fue posible consultar los eventos."
            );
        }
    }

    @Override
    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        try {
            String nombre = request.getParameter("nombre");
            String fechaTexto = request.getParameter("fecha");
            String lugar = request.getParameter("lugar");
            String cuposTexto = request.getParameter("cupos");

            if (nombre == null || nombre.isBlank()
                    || lugar == null || lugar.isBlank()
                    || nombre.length() > 150
                    || lugar.length() > 150) {
                throw new IllegalArgumentException(
                    "Nombre o lugar no valido."
                );
            }

            LocalDate fecha = LocalDate.parse(fechaTexto);
            int cupos = Integer.parseInt(cuposTexto);

            if (cupos < 0) {
                throw new IllegalArgumentException(
                    "Los cupos no pueden ser negativos."
                );
            }

            Evento evento = new Evento(
                0,
                nombre.trim(),
                fecha,
                lugar.trim(),
                cupos
            );

            eventoDAO.registrar(evento);

            request.setAttribute("nombre", evento.getNombre());
            request.setAttribute("fecha", evento.getFecha());
            request.setAttribute("lugar", evento.getLugar());
            request.setAttribute("cupos", evento.getCupos());

            request.getRequestDispatcher("/resultado.jsp")
                   .forward(request, response);

        } catch (IllegalArgumentException e) {

            request.setAttribute(
                "error", "Verifique los datos ingresados."
            );

            request.getRequestDispatcher("/registro.jsp")
                   .forward(request, response);

        } catch (SQLException e) {

            log("Error registrando evento", e);

            request.setAttribute(
                "error", "No fue posible guardar el evento."
            );

            request.getRequestDispatcher("/registro.jsp")
                   .forward(request, response);
        }
    }
}
