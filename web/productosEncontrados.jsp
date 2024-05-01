<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Resultados de Búsqueda</title>
   
    <style>
        body {
            background-color: #f8f9fa; 
            font-family: Arial, sans-serif;
            padding-top: 80px;
        }

        h1 {
            font-size: 3rem;
            text-align: center;
            margin-bottom: 30px;
            color: #007bff; 
        }

        table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
            border-collapse: collapse;
        }

        table th, table td {
            padding: 1rem;
            text-align: center;
            border: 1px solid #dee2e6;
        }

        .no-productos {
            text-align: center;
            font-size: 1.5rem;
            margin-top: 20px;
            color: #dc3545; 
        }

        .volver {
            display: block;
            text-align: center;
            margin-top: 20px;
            font-size: 1.2rem;
            text-decoration: none;
            color: #007bff; 
        }

        .btn-primary {
            background-color: #007bff; 
            border-color: #007bff; 
            padding: 10px 20px;
            font-size: 1.2rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn-primary:hover {
            background-color: #0056b3; 
            border-color: #0056b3;
        }
    </style>
</head>
<body>

    <h1>Resultados de Búsqueda</h1>

    <c:if test="${not empty productosEncontrados}">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <table>
                        <thead>
                            <tr>
                                <th>Código</th>
                                <th>Nombre</th>
                                <th>Precio</th>
                                <th>Stock</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="producto" items="${productosEncontrados}">
                                <tr>
                                    <td>${producto.codigo}</td>
                                    <td>${producto.nombre}</td>
                                    <td>${producto.precio}</td>
                                    <td>${producto.stock}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>

                    <div class="row">
                        <div class="col-md-6 text-start">
                            <a href="/mcventa/" class="btn btn-primary">Volver</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:if>

    <c:if test="${empty productosEncontrados}">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12">
                    <div class="no-productos">No hay productos disponibles.</div>
                </div>
            </div>
        </div>
        <a href="/mcventa/" class="volver">Volver al inicio</a>
    </c:if>

</body>
</html>
