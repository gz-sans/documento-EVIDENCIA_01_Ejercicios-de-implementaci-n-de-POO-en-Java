<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daviplata - Consultar saldo</title>
    <link rel="stylesheet" href="css/style_1.css">
    <style>
        body {
            color: white;
        }
    </style>
</head>
<body>
    <style>
        body {
            background-image: url('img/fondo18.jpg');
            background-size: cover;
        }
    </style>
    <header>
        <h1>Daviplata</h1>
        <nav>
            <ul>
                <li><a href="consultar2?boton=daviplata">Inicio</a></li>
                <li><a href="consultar3?accion=consultart">Consultar saldo</a></li>
                <li><a href="index.jsp">salir</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h1>Consulta tu saldo</h1>
        <!-- Formulario para consultar el saldo -->
        <form id="cantidad-form" action="consultar" method="post" novalidate>
        </form>
        <%-- Mostrar el saldo actual --%>
        <p>Saldo actual: <%= request.getAttribute("saldo") %></p>
        
        <%-- Formulario para realizar operaciones --%>
        <form id="cantidad-form" action="consultar3" method="post" novalidate>
            <label for="cantidad">Cantidad a operar</label>
            <input type="text" id="cantidad" name="cantidad" />
            <button type="submit" name="accion" value="suma">Recargar</button>
            <button type="submit" name="accion" value="resta">Retirar</button>
            <p id="error-msg" style="display: none; color: red;">Por favor, ingrese una cantidad válida.</p>
        </form>
        
        <!-- Sección para mostrar el resultado del retiro -->
        <p id="resultado"></p>
        
        <p>También puedes realizar otras operaciones en la aplicación Nequi.</p>
    </main>

    <script>
        // Función para consultar saldo
        const consultarSaldo = (monto) => {
            // Genera un número aleatorio entre 1000 y 100000
            const saldoActual = Math.floor(Math.random() * 99000) + 1000;

            // Retorna el saldo actual
            return saldoActual.toFixed(2);
        }

        // Manejador del evento submit del formulario
        document.querySelector("form").addEventListener("submit", (event) => {
            event.preventDefault(); // Evita que se recargue la página al enviar el formulario

            // Obtiene el monto ingresado por el usuario
            const monto = parseFloat(document.getElementById("monto").value);

            // Verifica que el monto ingresado sea mayor a cero
            if (monto <= 0) {
                alert("Por favor ingrese un monto mayor a cero.");
                return;
            }

            // Consulta el saldo actual
            const saldoActual = consultarSaldo(monto);

            // Muestra el saldo generado en la página
            document.getElementById("saldo").textContent = `$ ${saldoActual}`;
        });
    </script>
</body>
</html>
