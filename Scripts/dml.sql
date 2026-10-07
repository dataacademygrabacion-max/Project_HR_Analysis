-- 1. **Antigüedad:** ¿Cuál es el promedio de antigüedad de los empleados en cada departamento?

select Department 
    , ROUND(avg(YearsAtCompany),2) avg_antiguedad
from bd_hr.default.employee
group by Department ;
-- 2. **Retención:** ¿Cuántos empleados en cada departamento siguen trabajando actualmente en la empresa?

-- 3. **Satisfacción vs. Antigüedad:** ¿Cómo se compara la satisfacción laboral de los empleados en diferentes niveles de antigüedad?
-- 4. **Horas Extras:** ¿Qué porcentaje de empleados que trabajan horas extras han dejado la empresa?
--OverTime
SELECT count(1) CTD_REGISTROS 
        , count(CASE 
                    WHEN Attrition ='Yes' Then EmployeeID
                    -- else null 
                    END ) CTD_REGISTROS_CPP -- ESTE ES EL MAS ROBUSTO
        ,count_if(Attrition ='Yes' AND OverTime ='Yes') CTD_REGISTROS_CPP_2
        ,(count_if(Attrition ='Yes' AND OverTime ='Yes')/count(1))*100 pct_atrition
FROM bd_hr.default.employee
;
select OverTime
from bd_hr.default.employee
where Attrition ='Yes'
-- 5. **Desempeño por Viajes:** Clasificar los departamentos por el promedio de calificación de los gerentes, desglosado por frecuencia de viajes de negocios.
-- 6. **Capacitación:** ¿Existe una correlación positiva entre el número de oportunidades de capacitación tomadas y la satisfacción laboral?
-- 7. **Talento Top:** Identificar a los tres mejores empleados según la calificación de su gerente en cada departamento.
-- 8. **Distancia al Trabajo:** Categorizar a los empleados según su distancia al trabajo y mostrar el promedio de satisfacción laboral en cada categoría.
-- 9. **Promociones y Liderazgo:** ¿Existe una relación entre el número de ascensos y los años que un empleado ha pasado con su gerente actual?
-- 10. **Alerta de Rotación:** Para cada departamento, identificar el porcentaje de empleados que se han ido y que tenían una puntuación de satisfacción laboral inferior a 3.