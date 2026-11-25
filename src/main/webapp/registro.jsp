<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">
    <title>Registrar evento - ACTIVACOOP</title>

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
            padding: 22px;
        }

        main {
            max-width: 520px;
            margin: 35px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 2px 10px #00000015;
        }

        h2 {
            color: #176b42;
            text-align: center;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: bold;
        }

        input {
            width: 100%;
            padding: 11px;
            margin-top: 6px;
            box-sizing: border-box;
            border: 1px solid #cccccc;
            border-radius: 5px;
        }

        button {
            background: #176b42;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 12px 18px;
            margin-top: 22px;
            cursor: pointer;
        }

        a {
            color: #176b42;
            margin-left: 15px;
        }
    </style>
</head>
<body>

<header>
    <h1>ACTIVACOOP</h1>
    <p>Gestión de Eventos</p>
</header>

<main>
    <h2>Registrar nuevo evento</h2>

<% if (request.getAttribute("error") != null) { %>
    <p style="color: #b42318; font-weight: bold;">
        ${error}
    </p>
<% } %>

    <form action="eventos" method="post">

        <label for="nombre">Nombre del evento</label>
        <input type="text" id="nombre" name="nombre"
               maxlength="150" required>

        <label for="fecha">Fecha del evento</label>
        <input type="date" id="fecha" name="fecha" required>

        <label for="lugar">Lugar</label>
        <input type="text" id="lugar" name="lugar"
               maxlength="150" required>

        <label for="cupos">Cupos disponibles</label>
        <input type="number" id="cupos" name="cupos"
               min="0" required>

        <button type="submit">Guardar evento</button>
        <a href="index.jsp">Volver al inicio</a>

    </form>
</main>

</body>
</html>
