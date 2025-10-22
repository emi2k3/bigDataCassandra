// Ver todas las mediciones del día ordenadas por hora
SELECT hora, id_carril, velocidad_promedio, dsc_avenida
FROM mediciones
WHERE id_detector = '702601'
  AND fecha = '2025-08-01'
ORDER BY hora DESC;

-- Ver congestión severa (< 10 km/h) - posibles incidentes
SELECT hora, id_carril, velocidad_promedio, dsc_avenida,
       dsc_int_anterior, dsc_int_siguiente
FROM mediciones
WHERE id_detector = '702601'
  AND fecha = '2025-08-01'
  AND velocidad_promedio < 10
ALLOW FILTERING

SELECT hora, id_carril, velocidad_promedio, dsc_avenida
FROM mediciones
WHERE id_detector = '1001'
  AND fecha = '2024-10-15'
  AND velocidad_promedio > 80
ALLOW FILTERING;


