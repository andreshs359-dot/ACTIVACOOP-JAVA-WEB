
<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Resultado - ACTIVACOOP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
        }
        main {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
        }
        h1 { color: #176b42; }
        a { color: #176b42; }
    </style>
</head>
<body>
<main>
    <h1>ACTIVACOOP</h1>
    <h2>Datos del evento recibidos</h2>

    <p><strong>Nombre:</strong>
       ${nombre}</p>

    <p><strong>Fecha:</strong>
       ${fecha}</p>

    <p><strong>Lugar:</strong>
       ${lugar}</p>

    <p><strong>Cupos:</strong>
       ${cupos}</p>

    <p>El formulario fue procesado correctamente.</p>
    <p>El evento fue registrado correctamente en MySQL.</p>

    <a href="registro.jsp">Nuevo registro</a>
    |
    <a href="index.jsp">Volver al inicio</a>
</main>
</body>
</html>
