SELECT id, nombre, precio, id_fabricante
FROM producto
WHERE precio = (SELECT MAX(precio) FROM producto);
