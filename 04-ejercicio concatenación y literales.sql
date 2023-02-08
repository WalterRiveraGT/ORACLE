/*1. Crear la consulta para visualizar los siguientes datos, usando el operador de concatenación ||
EJ:
DATOS
----------------------------------------------------------------------------------------------------------------
El empleado Donald del departamento 50 tiene un salario de 2600
*/

SELECT
    'EL EMPLEADO ' ||FIRST_NAME|| ' ' || 'DEL DEPARTAMENTO '|| DEPARTMENT_ID||' TIENE UN SALARIO DE '||SALARY AS DATOS
FROM
    EMPLOYEES;

SELECT
    *
FROM
    EMPLOYEES;

SELECT
    *
FROM
    LOCATIONS;

/* EJERCICIO 02: 
CREAR LA SIGUIENTE CONSULTA:
EJ:
CALLE Y CIUDAD
--------------------------------------------------------------------------------------------------------------------------------
LA CALLE 1297 VIA COLA DI RIE PERTENECE A LA CIUDAD: ROMA*/
SELECT
    'LA CALLE '||LOCATION_ID||' '||STREET_ADDRESS||' PERTENECE A LA CIUDAD: '||' '||STATE_PROVINCE AS "CALLE Y CIUDAD"
FROM
    LOCATIONS;