<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Nequi - Consultar saldo</title>
    <link rel="stylesheet" href="css/style2.css" />
</head>
<body>
    <style>
		body {
			background-image: url('img/fondo17.jpg');
		}
	</style>
<nav>
    <ul>
        <li><a href="nequi.jsp" style="color: #FFF;">Inicio</a></li>
        <li><a href="consultar?accion=consultart" style="color: #FFF;">Consultar Saldo</a></li>
        <li><a href="index.jsp" style="color: #FFF;">Salir</a></li>
    </ul>
</nav>
<main>
    <h1 style="color: #FFF;">Consulta tu saldo</h1>
    <!-- Formulario para consultar el saldo -->
    <form id="cantidad-form" action="consultar" method="post" novalidate>
    </form>
    <%-- Mostrar el saldo actual --%>
    <p style="color: #FFF;">Saldo actual: <%= request.getAttribute("saldo") %></p>
    
    <%-- Formulario para realizar operaciones --%>
    <form id="cantidad-form" action="consultar" method="post" novalidate>
        <label for="cantidad" style="color: #FFF;">Cantidad a operar</label>
        <input type="text" id="cantidad" name="cantidad" />
        <button type="submit" name="accion" value="suma" style="color: #FFF;">Recargar</button>
        <button type="submit" name="accion" value="resta" style="color: #FFF;">Retirar</button>
        <p id="error-msg" style="display: none; color: red;">Por favor, ingrese una cantidad válida.</p>
    </form>
    
    <!-- Sección para mostrar el resultado del retiro -->
    <p id="resultado" style="color: #FFF;"></p>
    
    <p style="color: #FFF;">También puedes realizar otras operaciones en la aplicación Nequi.</p>
</main>
</body>
</html>
