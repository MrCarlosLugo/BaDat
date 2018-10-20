

SELECT * FROM Alumno
WHERE Matricula = '1111121';

SELECT * FROM Alumno
where Matricula <> '1111121';

SELECT * FROM Alumno
where Nombre = 'Gabriel'
and FechaDeIngreso = '2017-08-06';

SELECT * FROM Alumno
where Nombre = 'Gabriel'
or ApellidoP = 'perea';

SELECT * FROM Alumno
Order by Nombre;

SELECT min(Matricula) from Alumno;

SELECT max(Matricula) from Alumno;

SELECT Count(*) from Alumno
where nombre = 'gabriel';

SELECT avg(Matricula) from Alumno;

SELECT sum(Matricula) from Alumno;
