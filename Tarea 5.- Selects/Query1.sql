select * from Maestro;

SELECT * FROM Alumno;

SELECT NOMBRE FROM Maestro;

SELECT DISTINCT nombre from Alumno;

SELECT NOMBRE,
APELLIDOP as AP,
APELLIDOM as AM 
from alumno;

SELECT * FROM Estado LEFT JOIN	Municipio
ON Estado.IdEstado = Municipio.IdEstado;


SELECT * FROM Municipio right JOIN	Colonia
ON Colonia.IdMunicipio = Municipio.Idmunicipio;

SELECT *
FROM Colonia
inner join Municipio
ON colonia.IdMunicipio=Municipio.IdMunicipio;

SELECT *
FROM Estado
inner join Municipio
ON Estado.IdEstado=Municipio.IdEstado;
