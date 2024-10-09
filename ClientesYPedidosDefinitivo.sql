INSERT INTO clientes (nombre, direccion, telefono)
VALUES ('Sebastián Cordova', 'Valdivia 843', 972436578),
		('Alfredo Mora', 'Orompello 980', 998756434),
        ('Maxi Matamala', 'Esmeralda 433', 912349058),
        ('Miguel Dinares', 'Chile Barrio 823', 918273456),
        ('Francisca Rivas', 'Valdivia 923', 923948561);
        
INSERT INTO pedidos (clientes_id_cliente, fecha, total)
VALUES (1, '2024-02-10 12:34:32' , 20000),
		(1, '2024-10-11 09:20:32' , 10000),
        (1, '2023-11-15 22:10:10' , 30000),
        (2, '2024-01-11 11:33:22' , 10000),
        (5, '2024-04-20 11:33:33' , 50000),
        (3, '2021-10-11 12:30:20' , 60000),
        (2, '2024-12-12 12:12:12' , 30000),
        (1, '2022-02-02 13:11:12' , 10000),
        (4, '2023-01-01 01:01:01' , 30000),
        (4, '2023-10-20 19:12:20' , 40000);

SELECT *
FROM pedidos;
        
SELECT *
FROM clientes;

SELECT SUM(total), clientes_id_cliente
FROM pedidos group by clientes_id_cliente;

DELETE FROM pedidos
WHERE id_pedido = 11;

DELETE FROM pedidos
WHERE id_pedido = 18;

DELETE FROM clientes
WHERE id_cliente = 1;

SELECT *
FROM pedidos ORDER BY total DESC;

SELECT nombre, count(clientes_id_cliente) AS total
FROM pedidos JOIN clientes
ON id_cliente = clientes_id_cliente 
group by clientes_id_cliente
ORDER BY total DESC
LIMIT 3;