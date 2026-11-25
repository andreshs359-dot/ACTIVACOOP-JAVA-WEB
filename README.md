# ACTIVACOOP - Gestión de Eventos Web

## Descripción
Aplicación web desarrollada como práctica del programa
Análisis y Desarrollo de Software del SENA.

Permite registrar y consultar eventos mediante una
interfaz web conectada a MySQL.

## Tecnologías utilizadas
- Java 21
- JSP
- Jakarta Servlets
- JDBC
- MySQL 9.7
- Apache Tomcat 10.1
- Apache Maven
- HTML y CSS
- Git y GitHub

## Funcionalidades
1. Registro de eventos mediante formulario web.
2. Validación de datos ingresados.
3. Almacenamiento de eventos en MySQL.
4. Consulta de eventos registrados.
5. Visualización de resultados en tablas HTML.

## Estructura del proyecto
- ConexionBD.java: conexión a MySQL.
- Evento.java: modelo de datos.
- EventoDAO.java: operaciones SQL.
- EventoServlet.java: procesamiento GET y POST.
- index.jsp: página principal.
- registro.jsp: formulario.
- resultado.jsp: confirmación de registro.
- listado.jsp: consulta de eventos.

## Base de datos
Nombre: activacoop_java_practica

Tabla: eventos

Campos:
- id
- nombre
- fecha
- lugar
- cupos

La base de datos se mantiene independiente
del proyecto principal ACTIVACOOP.

## Requisitos
- JDK 21
- Maven
- MySQL
- Apache Tomcat 10.1

## Compilación
Ejecutar desde la carpeta del proyecto:

mvn clean package

El archivo WAR se genera en:
target/gestion-eventos-web.war

## Despliegue
1. Configurar las variables DB_USER y DB_PASSWORD
   para la conexión MySQL.
2. Copiar el archivo WAR a la carpeta webapps de Tomcat.
3. Iniciar Apache Tomcat.
4. Abrir en el navegador:
   http://localhost:8080/gestion-eventos-web/

## Nota de seguridad
Las contraseñas no se almacenan en el código fuente.
La aplicación utiliza variables de entorno.

## Alcance
Proyecto académico de práctica.
No corresponde a la aplicación principal
de producción de ACTIVACOOP.
