SELECT id, nombre, precio, id_fabricante
FROM producto
WHERE precio = (SELECT MIN(precio) FROM producto);
