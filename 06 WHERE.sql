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