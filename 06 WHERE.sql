/*uso de la cláusula where*/

/*saber aquellos empleados que trabajan en el departamento 50*/
SELECT
    *
FROM
    EMPLOYEES
WHERE
    DEPARTMENT_ID=50;

.

/*OPERADORES*/
/*
=
>
<
>=
<=
<>
*/

/*EMPLEADOS QUE NO TRABAJAN EN EL DEPARTAMENTO 50*/
SELECT
    *
FROM
    EMPLOYEES
WHERE
    DEPARTMENT_ID<>50;

/*condiciones con literales (strings)*/
/*seleccionar aquellos usuarios que
    tengan nombre John*/


SELECT
    *
FROM
    EMPLOYEES
WHERE
    FIRST_NAME='John';

/*comparar fechas
las fechas se guardan como numeros julianos
la fecha tiene un número específico*/
/*seleccionar aquellos empleados que entraron Entre
el año 2006 y 2007*/
SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    LAST_NAME,
    TO_DATE(HIRE_DATE,
    'DD/MM/YYYY') AS FECHA_INGRESO
FROM
    EMPLOYEES
WHERE
    EXTRACT(YEAR FROM HIRE_DATE) BETWEEN 2006
    AND 2007;