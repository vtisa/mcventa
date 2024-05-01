
package modelo;

import modelo.ProductoDAO;
import modelo.Producto;
import java.sql.Connection;
import java.util.List;


public class ProductoService {
    private final ProductoDAO productoDAO;

    public ProductoService(Connection conexion) {
        productoDAO = new ProductoDAO(conexion);
    }

    public void agregarProducto(Producto producto) {
        productoDAO.insertarProducto(producto);
    }

    public List<Producto> obtenerProductos() {
        return productoDAO.obtenerTodosLosProductos();
    }

    public List<Producto> buscarProductosPorNombre(String nombre) {
        return productoDAO.buscarProductosPorNombre(nombre);
    }
}
