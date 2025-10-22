CREATE TABLE velocidadesbigdata.mediciones (
  id_detector text,
  id_carril int,
  fecha date,
  hora time,
  dsc_avenida text,
  dsc_int_anterior text,
  dsc_int_siguiente text,
  latitud double,
  longitud double,
  velocidad_promedio int,
  PRIMARY KEY ((id_detector, fecha), hora)
)
WITH CLUSTERING ORDER BY (hora DESC);
