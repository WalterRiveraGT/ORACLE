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