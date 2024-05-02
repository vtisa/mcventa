<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/css-bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="css/buscador.css" rel="stylesheet">
    <title>Buscar Producto</title>
</head>
<body>

<div class="container">
    <h1>Buscar Producto (por nombre)</h1>

    <form action="BuscarServlet" method="post">
        <label for="nombre">Nombre del Producto:</label>
        <input type="text" id="nombre" pattern="^[^0-9]+$" name="nombre" required oninput="return soloLetras(event)">
        <button type="submit">Buscar</button>
    </form>

    <a href="/mcventa/" class="volver">Volver al inicio</a>
</div>
    <script src="js/buscar.js"></script>
</body>
</html>
