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