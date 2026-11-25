<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.activacoop.Evento" %>

<%!
    private String escapar(String texto) {
        if (texto == null) return "";
        return texto.replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
                    .replace("\"", "&quot;")
                    .replace("'", "&#39;");
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Consultar eventos - ACTIVACOOP</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
        }

        header {
            background: #176b42;
            color: white;
            text-align: center;
            padding: 25px;
        }

        main {
            max-width: 900px;
            margin: 40px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            overflow-x: auto;
        }

        h2 {
            color: #176b42;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }

        th {
            background: #176b42;
            color: white;
        }

        a {
            color: #176b42;
        }
    </style>
</head>

<body>

<header>
    <h1>ACTIVACOOP</h1>
    <p>Sistema Web de Gestión de Eventos</p>
</header>

<main>

    <h2>Eventos registrados</h2>

    <%
        List<Evento> eventos =
            (List<Evento>) request.getAttribute("eventos");

        if (eventos == null || eventos.isEmpty()) {
    %>

        <p>No hay eventos registrados.</p>

    <%
        } else {
    %>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Fecha</th>
                <th>Lugar</th>
                <th>Cupos</th>
            </tr>
        </thead>

        <tbody>
            <% for (Evento evento : eventos) { %>
            <tr>
                <td><%= evento.getId() %></td>
                <td><%= escapar(evento.getNombre()) %></td>
                <td><%= evento.getFecha() %></td>
                <td><%= escapar(evento.getLugar()) %></td>
                <td><%= evento.getCupos() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>

    <% } %>

    <p>
        <a href="registro.jsp">Registrar nuevo evento</a>
        |
        <a href="index.jsp">Volver al inicio</a>
    </p>

</main>

</body>
</html>
