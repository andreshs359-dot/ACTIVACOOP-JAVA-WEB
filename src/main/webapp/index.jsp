
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Gestión de Eventos - ACTIVACOOP</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f8;
            margin: 0;
        }

        header {
            background-color: #176b42;
            color: white;
            text-align: center;
            padding: 25px;
        }

        main {
            max-width: 750px;
            margin: 45px auto;
            background: white;
            padding: 35px;
            border-radius: 10px;
            box-shadow: 0 2px 10px #00000015;
            text-align: center;
        }

        h2 {
            color: #176b42;
        }

        p {
            line-height: 1.6;
        }

        .boton {
            display: inline-block;
            background-color: #176b42;
            color: white;
            text-decoration: none;
            padding: 13px 22px;
            border-radius: 6px;
            margin: 12px 5px;
        }

        .boton:hover {
            background-color: #105132;
        }
    </style>
</head>

<body>

    <header>
        <h1>ACTIVACOOP</h1>
        <p>Sistema Web de Gestión de Eventos</p>
    </header>

    <main>
        <h2>Bienvenido al módulo de eventos</h2>

        <p>
            Esta aplicación permite gestionar eventos
            mediante tecnologías Java, JSP, Servlets
            y una base de datos MySQL.
        </p>

        <p>
            Proyecto desarrollado como práctica del
            programa Análisis y Desarrollo de Software
            del SENA.
        </p>

        <a class="boton" href="registro.jsp">
            Registrar evento
        </a>

        <a class="boton" href="eventos">
            Consultar eventos
        </a>
    </main>

</body>
</html>
