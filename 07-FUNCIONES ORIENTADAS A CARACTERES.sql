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

/*FUNCIÓN INSTR
Devuelve la posición que ocupa una cadena, dentro
de otra cadena*/

/*SELECT FIRST_NAME, INSTR(P_ /*STRING*/
/*SUBSTRING*//*POSITION*//*OCCURRENCE)*/
/*Nombres con una letra a y su posición, 
Si devuelve 0, quiere decir que no existe tal caracter 
en la cadena*/

/*Función REGEXP_COUNT: permite contar
la concurrencia (número de veces) que aparece
un caracter o caracteres determinaodos en una cadena dada*/
SELECT
    FIRST_NAME,
    INSTR(FIRST_NAME,
    'a') AS UBICACION_CARACTER_A,
    REGEXP_COUNT(FIRST_NAME,
    'a',
    1)   AS CONCURRENCIA_DEL_CARACTER_A
FROM
    EMPLOYEES;

/*sacar los nombres que solo tengan una y
pasamos todos los caracteres a minúscula*/

SELECT
    FIRST_NAME,
    INSTR(LOWER(FIRST_NAME),
    'y',
    1) AS UBICACION_CARACTER_Y
FROM
    EMPLOYEES
WHERE
    INSTR(LOWER(FIRST_NAME),
    'y',
    1)>=1;

/*sacar los nombres que solo tengan una a
    desde la posición número 4
pasamos todos los caracteres a minúscula*/

SELECT
    FIRST_NAME,
    INSTR(LOWER(FIRST_NAME),
    'a',
    4) AS UBICACION_CARACTER_Y
FROM
    EMPLOYEES
WHERE
    INSTR(LOWER(FIRST_NAME),
    'a',
    4)>=1;