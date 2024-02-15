/*Sin el operador IN*/
select * from producto where id_fabricante=1 or id_fabricante=3 or id_fabricante=5
/*Con el operador IN*/
select * from producto where id_fabricante in(1,3,5)
