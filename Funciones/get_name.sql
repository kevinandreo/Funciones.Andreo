USE deposito_queso
DELIMITER $$

-- Funcion que retorna el nombre del empleado dado a su id respectivo 
CREATE FUNCTION get_name(id INT)
RETURNS VARCHAR(100)
READS SQL DATA

BEGIN
DECLARE name_empleado VARCHAR(100);
SELECT nombre_empleado INTO name_empleado FROM empleados WHERE id_empleado = id;
RETURN name_empleado;

END$$

DELIMITER ;

-- Funciona del 12 31 45 50 57
SELECT get_name(31);