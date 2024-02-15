SELECT p.id AS id_producto, p.nombre AS nombre_producto, p.id_fabricante, f.nombre AS nombre_fabricante
FROM producto p
JOIN fabricante f ON p.id_fabricante = f.id;
