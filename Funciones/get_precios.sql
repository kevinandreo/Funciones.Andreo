USE deposito_queso
DELIMITER $$

-- Funcion que retorna los precios de los productos
CREATE FUNCTION get_precios(id INT)
RETURNS VARCHAR(100)
READS SQL DATA

BEGIN
DECLARE precio_total VARCHAR(100);
SET precio_total = '';
SELECT precio_producto INTO precio_total
FROM productos 
WHERE id_producto = id;
RETURN precio_total;

END$$

DELIMITER ;

-- Funciona del 1 a 19
SELECT get_precios (19);