/*Con Alias*/
SELECT p.nombre AS nombre_producto, p.precio, f.nombre AS nombre_fabricante
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id;

/*Sin Alias*/
SELECT producto.nombre AS nombre_producto, producto.precio, fabricante.nombre AS nombre_fabricante
FROM producto
JOIN fabricante ON producto.id_fabricante = fabricante.id;
