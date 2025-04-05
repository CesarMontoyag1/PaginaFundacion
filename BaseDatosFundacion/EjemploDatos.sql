USE BaseDatosFundacion;

-- Insertar en la tabla Administrativos
INSERT INTO Administrativos (numeroDoc, nombreCompleto, email, tipoDoc)
VALUES ('1002', 'Mariana Suárez', 'mariana.suarez@colegio.edu.co', 'CC');

-- Insertar en la tabla Profesor
INSERT INTO Profesor (numeroDoc, nombreCompleto, email, tipoDoc)
VALUES ('2002', 'Diego Torres', 'diego.torres@colegio.edu.co', 'CC');

-- Insertar en la tabla Estudiantes
INSERT INTO Estudiantes (
    numeroDocEstudiante, tipoDoc, informe, primerNombre, segundoNombre,
    primerApellido, segundoApellido, genero, fechaNacimiento,
    estadoCivil, grupoEtnico, factorVulnerabilidad, paisNacimiento,
    municipioNacimiento, municipioResidencia, direccionResidencia,
    zonaEstudiante, mundo, modalidad, dias, horarioInicio, horarioFin,
    codigoDaneIE, subregionIE, municipioIE, institucionEducativa,
    codigoDaneSede, sede, grado, jornada, nit, proveedor
)
VALUES (
    '3002', 'TI', 'Ninguno', 'Valentina', 'María', 'López', 'González', 'F',
    '2011-08-20', 'Soltera', 'Afrodescendiente', 'Desplazado', 'Colombia', 'Envigado',
    'Envigado', 'Carrera 50 #20-10', 'Rural', 'Agua', 'Presencial',
    'Lunes-Viernes', '08:00', '14:00', '1122334455', 'Valle de Aburrá',
    'Envigado', 'Institución Educativa Sur', '1234432112',
    'Sede Rural', '6', 'T', '800987654', 'NutriCo S.A.'
);

-- Insertar en la tabla user (nuevo administrativo)
INSERT INTO user (username, email, password, rol, Administrativos_numeroDoc, Profesor_numeroDoc)
VALUES ('adminmariana', 'mariana.suarez@colegio.edu.co', 'adminpass2', 'administrativo', '1002', '');

-- Insertar en la tabla user (nuevo profesor)
INSERT INTO user (username, email, password, rol, Administrativos_numeroDoc, Profesor_numeroDoc)
VALUES ('diegotorres', 'diego.torres@colegio.edu.co', 'profpass2', 'profesor', '', '2002');

-- Insertar en la tabla Asistencia
INSERT INTO Asistencia (
    numeroDocEstudiante, instucionEducativa, fechaAsistencia, Asistio,
    Estudiantes_numeroDocEstudiante, Profesor_numeroDoc, Administrativos_numeroDoc
)
VALUES (
    '3002', 'Institución Educativa Sur', '2025-04-05 08:05:00', 1,
    '3002', '2002', '1002'
);

-- Insertar en Administrativos_has_Estudiantes
INSERT INTO Administrativos_has_Estudiantes (Administrativos_numeroDoc, Estudiantes_numeroDocEstudiante)
VALUES ('1002', '3002');

-- Insertar en Administrativos_has_Profesor
INSERT INTO Administrativos_has_Profesor (Administrativos_numeroDoc, Profesor_numeroDoc)
VALUES ('1002', '2002');
