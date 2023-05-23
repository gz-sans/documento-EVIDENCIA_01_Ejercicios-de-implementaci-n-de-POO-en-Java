<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Inicio</title>
  <link rel='stylesheet' type='text/css' media='screen' href='login.css'>
  <style>
    body {
      background-image: url("img/fondo9.jpg");
      background-size: cover;
      background-position: center;
      color: white;
    }
    .logo {
      display: block;
      margin: 0 auto;
      max-width: 200px;
    }
    .nequi-logo {
      margin-top: 50px;
    }
    /* Estilos para la sección transparente */
    .transparent-section {
      background-color: rgba(0,0,0,0.7);
      padding: 20px;
      border-radius: 10px;
    }
    .transparent-section h2 {
      margin-top: 0;
    }
    .transparent-section p {
      font-size: 18px;
      line-height: 1.5;
    }
    /* Estilos para los botones */
    .boton {
      background-color: rgba(255,255,255,0.8);
      border: none;
      border-radius: 5px;
      color: black;
      font-size: 16px;
      font-weight: bold;
      padding: 10px;
      margin: 5px;
      cursor: pointer;
      transition: background-color 0.3s ease;
      width: 100%;
    }
    .boton:hover {
      background-color: rgba(255,255,255,1);
    }
  </style>
</head>
<body>
  <header>
    <img src="img/num1.png" alt="Logo 1" class="logo">
    <img src="img/num2.png" alt="Logo 2" class="logo nequi-logo">
    <h1>Iniciar sesión</h1>
  </header>
  
  <main>
    <form method="GET">
      <div>
          <label for="usuario">Usuario:</label>
          <input type="text" id="usuario" name="usuario">
      </div>
        
      <div>
          <label for="contrasena">Contraseña:</label>
          <input type="password" id="contrasena" name="contrasena">
      </div>
        
      <div style="display: flex;">
          <ul>
              <li><a href="consultar2?boton=nequi" class="boton" style="background-color: blue;">nequi</a></li>
              <li><a></a></li>
              <li><a>te olvidate de tu contraseña?</a></li>
              <li><a></a></li>
              <li><a href="consultar2?boton=daviplata" class="boton" style="background-color: green;">daviplata</a></li>
          </ul>
      </div>
  </form>
  
  
  
    
  </main>
  
  
</body>
</html>
