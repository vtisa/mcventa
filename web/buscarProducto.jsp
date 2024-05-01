<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Buscar Producto</title>
    
    <style>
        body {
            background-color: #f8f9fa; 
            font-family: Arial, sans-serif;
        }

        .container {
            max-width: 400px;
            margin: 100px auto;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); 
            background-color: #ffffff; 
            padding: 20px;
        }

        h1 {
            font-size: 2rem;
            text-align: center;
            margin-bottom: 30px;
            color: #007bff; 
        }

        form {
            padding: 20px;
            border-radius: 10px;
            background-color: #f8f9fa; 
        }

        label, input {
            display: block;
            width: 100%;
            margin-bottom: 15px;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff; 
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .volver {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 1rem;
            text-decoration: none;
            color: #007bff;
        }

        .volver:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Buscar Producto (por nombre)</h1>

    <form action="BuscarProductoServlet" method="post">
        <label for="nombre">Nombre del Producto:</label>
        <input type="text" id="nombre" name="nombre" required>
        <button type="submit">Buscar</button>
    </form>

    <a href="/mcventa/" class="volver">Volver al inicio</a>
</div>

</body>
</html>
