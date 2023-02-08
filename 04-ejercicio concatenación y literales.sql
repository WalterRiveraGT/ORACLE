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