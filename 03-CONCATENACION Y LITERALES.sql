/*video 44 literales*/
/*poner una cadena de caracteres (sin concatenar) a un campo o varios*/
SELECT
    'NOMBRE:',
    FIRST_NAME
FROM
    EMPLOYEES;

/*concatenar CADENA DE CARACTERES*/

SELECT
    'NOMBRE: ' || FIRST_NAME || LAST_NAME AS NOMBRE_EMPLEADO
FROM
    EMPLOYEES;