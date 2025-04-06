USE BaseDatosFundacion;


INSERT INTO basedatosfundacion.usuario (numDoc, tipoDoc, username, email, password, rol)
VALUES 
('123456789', 'CC', 'juanadmin', 'juan.admin@email.com', 'admin123', 'administrativo'),
('987654321', 'TI', 'lauraprof', 'laura.prof@email.com', 'prof456', 'profesor');


INSERT INTO basedatosfundacion.estudiantes (
  numDoc, tipoDoc, primerNombre, segundoNombre, primerApellido, segundoApellido, genero,
  fechaNacimiento, estadoCivil, grupoEtnico, factorVulnerabilidad, paisNacimiento,
  municipioNacimiento, municipioResidencia, direccionResidencia, zonaEstudiante,
  mundo, modalidad, dias, horarioInicio, horarioFin, codigoDaneIE, codigoDaneSede,
  grado, jornada, nit)
VALUES 
('111111111', 'TI', 'Carlos', NULL, 'Ramírez', 'Lopez', 'M', '2010-05-10', 'Soltero',
 'Mestizo', 'Desplazado', 'Colombia', 'Medellín', 'Sabaneta', 'Calle 10 #5-30', 'Urbana',
 'Mundo1', 'Virtual', 'Lunes-Miércoles', '08:00', '10:00', '105500', '105501', '5', 'M', '800123456'),
 
('222222222', 'CC', 'Ana', 'Lucía', 'Gómez', NULL, 'F', '2009-11-25', 'Soltera',
 'Afrocolombiano', 'Discapacidad', 'Colombia', 'Cali', 'Itagüí', 'Cra 20 #15-50', 'Rural',
 'Mundo2', 'Presencial', 'Martes-Jueves', '14:00', '16:00', '205500', '205501', '6', 'T', '900987654');


INSERT INTO basedatosfundacion.asistencia (
  institucionEducativa, fechaAsistencia, Usuario_numDoc, Usuario_tipoDoc)
VALUES 
('IE Sabaneta Central', '2025-04-06 08:00:00', '123456789', 'CC'),
('IE Itagüí Rural', '2025-04-06 14:00:00', '987654321', 'TI');


INSERT INTO basedatosfundacion.asistencia_has_estudiantes (
  Asistencia_idAsistencia, Estudiantes_numDoc, Estudiantes_tipoDoc, asistio)
VALUES 
(1, '111111111', 'TI', 1),
(2, '222222222', 'CC', 0);
