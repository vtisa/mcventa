<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>Lista de Productos</title>
    <!-- Agrega la referencia a Bootstrap CSS -->
    
    <style>
        body {
            background-color: #f8f9fa; 
            color: #343a40; 
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 50px;
            text-align: center; 
        }

        h1 {
            font-size: 3rem;
            margin-bottom: 30px;
            color: #007bff; 
            text-transform: uppercase;
        }

        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: separate;
            border-spacing: 0 10px;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border: none; 
        }

        th {
            background-color: #007bff;
            color: #ffffff;
            font-weight: bold;
        }

        td {
            background-color: #ffffff;
            border: 1px solid #dee2e6;
        }

        .no-productos {
            font-size: 1.5rem;
            margin-top: 20px;
            color: #6c757d;
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

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>Lista de Productos</h1>

            <c:choose>
                <c:when test="${not empty productos}">
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
                            <c:forEach var="producto" items="${productos}">
                                <tr>
                                    <td>${producto.codigo}</td>
                                    <td>${producto.nombre}</td>
                                    <td>${producto.precio}</td>
                                    <td>${producto.stock}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:when>
                <c:otherwise>
                    <p class="no-productos">No hay productos disponibles.</p>
                </c:otherwise>
            </c:choose>

            <div class="row justify-content-center"> 
                <div class="col-md-12">
                    <a href="registro.jsp" class="btn btn-primary">Agregar Producto</a>
                    <a href="buscarProducto.jsp" class="btn btn-primary">Buscar Producto</a>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>




