--LOWER
/*MINÚSCULAS*/
SELECT
    EMAIL,
    LOWER(EMAIL)
FROM
    EMPLOYEES;

--UPPER
/*MAYÚSCULAS*/
SELECT
    FIRST_NAME,
    UPPER(FIRST_NAME)
FROM
    EMPLOYEES;

--INITCAP
/*primera letra de cada palabra en mayúscula*/
SELECT
    INITCAP('Esto es una prueba')
FROM
    DUAL;

/*funciones de concatenación de caracteres*/
--concatenación
SELECT
    FIRST_NAME ||' ' || LAST_NAME
FROM
    EMPLOYEES;

/*OTRA OPCIÓN*/
SELECT
    CONCAT(FIRST_NAME,
    CONCAT(' ',
    LAST_NAME)) AS NOMBRE_COMPLETO
FROM
    EMPLOYEES;

--función lenght
/*PERMITE SABER EL TAMAÑO
    EN CARACTERES DE LA CADENA SELECCIONADA*/
SELECT
    FIRST_NAME,
    LENGTH(FIRST_NAME)
FROM
    EMPLOYEES;

/*SABER AQUELLOS NOMBRES QUE TENGAN 6
CARACTERES EN SU CADENA*/

SELECT
    FIRST_NAME||' ' || LAST_NAME AS NOMBRE_COMPLETO
FROM
    EMPLOYEES
WHERE
    LENGTH(FIRST_NAME)=6;

/*FUNCIÓN SUBSTRING SUBSTR
SUBSTR(CADENA, POSICIÓN_INICIAL, LONGITUD)
*/
/*SACAR LOS PRIMEROS TRES CARACTERES*/
SELECT
    FIRST_NAME,
    SUBSTR(FIRST_NAME,
    1,
    3) AS SUBSTRING
FROM
    EMPLOYEES;

/*OBTENER EL ÚLTIMO CARACTER DE LA CADENA*/
SELECT
    FIRST_NAME,
    SUBSTR(FIRST_NAME,
    LENGTH(FIRST_NAME),
    1) AS ULTIMO_CARACTER
FROM
    EMPLOYEES;