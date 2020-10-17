-- ------------------------------------------------------------------------
-- Base de datos: `bedelia`
-- Orden en que se generaran los datos de prueba
/*
direccion             hecho
persona               hecho
usuario               hecho
admin                 hecho
administrativo        hecho
docente               hecho
estudiante            hecho
sede                  hecho
area_estudio          hecho
tipo_curso            hecho
carrera               hecho
carrera_sede          hecho
curso                 hecho
carrera_curso         hecho
previa                hecho
carrera_area_estudio  hecho


periodo               hecho
periodo_examen        hecho
periodo_insc_curso    hecho
periodo_insc_examen   hecho
periodo_lectivo       hecho

edicion_curso         (sin hacer)
examen                (sin hacer)

inscripcion_carrera   (sin hacer)
inscripcion_curso     (sin hacer)
inscripcion_examen    (sin hacer)

clase_dictada         (sin hacer)
asistencia            (sin hacer)

postulacion           (sin hacer)

escolaridad           (sin hacer)

*/


-- ------------------------------------------------------------------------
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- ------------------------------------------------------------------------
-- 
-- Trunca todas las tablas de la base de datos
-- 
-- Codigo pendiente....



-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `direccion`
--
INSERT INTO `direccion` (/*id,*/ `departamento`, `ciudad`, `calle`, `numero`) VALUES
    (/* 1,*/ 'San José', 'Libertad', 'España', '123'),
    (/* 2,*/ 'San José', 'San José de Mayo', 'España', '258'),
    (/* 3,*/ 'San José', 'San José de Mayo', 'Durazno', '456'),
    (/* 4,*/ 'San José', 'Libertad', 'Durazno', '369'),
    (/* 5,*/ 'San José', 'San José de Mayo', '18 de julio', '789'),
    (/* 6,*/ 'San José', 'San José de Mayo', '18 de julio', '159'),
    (/* 7,*/ 'San José', 'San José de Mayo', '25 de Mayo', '147'),
    (/* 8,*/ 'San José', 'Libertad', '25 de Mayo', '753'),
    (/* 9,*/ 'San José', 'San José de Mayo', 'Sarandí', '258'),
    (/*10,*/ 'San José', 'San José de Mayo', 'Sarandí', '123'),
    (/*11,*/ 'San José', 'Rodriguez', 'Herrera', '369'),
    (/*12,*/ 'San José', 'San José de Mayo', 'Herrera', '456'),
    (/*13,*/ 'San José', 'San José de Mayo', 'Artigas', '159'),
    (/*14,*/ 'San José', 'Libertad', 'Artigas', '789'),
    (/*15,*/ 'San José', 'San José de Mayo', 'Asamblea', '753'),
    (/*16,*/ 'San José', 'Rodriguez', 'Asamblea', '147'),

    (/*17,*/ 'San José',    'San José de Mayo',       'Artigas esq. Ciganda', '123'),
    (/*17,*/ 'Montevideo',  'Montevideo',             'Agraciada',            '123'),
    (/*17,*/ 'Colonia',     'Colonia del sacramento', '18 de Julio',          '123');


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `persona`
--
INSERT INTO `persona` (/*`id`,*/ `cedula`, `nombre`, `apellido`, `correo`, `fecha_nac`, `sexo`, `direccion_id`) VALUES
    (/* 1,*/ '00000000', 'Juan',      'Alvarez',   'Juan.Alvarez@utec.edu.uy',      '1991-01-01', 'M',  1),
    (/* 2,*/ '22222200', 'Lucas',     'Garrido',   'Lucas.Garrido@utec.edu.uy',     '1992-02-02', 'M',  2),
    (/* 3,*/ '33333300', 'Sebastian', 'Morales',   'Sebastian.Morales@utec.edu.uy', '1993-03-03', 'M',  3),
    (/* 4,*/ '44444400', 'Octavio',   'Cepergo',   'Octavio.Cepergo@utec.edu.uy',   '1994-04-04', 'M',  4),
    (/* 5,*/ '55555500', 'Gustavo',   'Cerdeña',   'Gustavo.Cerdeña@utec.edu.uy',   '1995-05-05', 'M',  5),
    (/* 6,*/ '66666600', 'Joaquin',   'Suarez',    'Joaquin.Suarez@utec.edu.uy',    '1996-06-06', 'M',  6),
    (/* 7,*/ '77777700', 'Carlos',    'Balbiani',  'Carlos.Balbiani@utec.edu.uy',   '1997-07-07', 'M',  7),
    (/* 8,*/ '88888800', 'Julio',     'Arrieta',   'Julio.Arrieta@utec.edu.uy',     '1998-08-08', 'M',  8),
    (/* 9,*/ '99999900', 'Edward',    'Rodriguez', 'Edward.Rodriguez@utec.edu.uy',  '1999-09-09', 'M',  9),
    (/*10,*/ '11111101', 'Pedro',      'Fernandez',    'Pedro.Fernandez@utec.edu.uy',    '1970-10-09', 'M', 10),
    (/*11,*/ '22222201', 'Rosana',     'Iturraldes',   'Rosana.Iturraldes@utec.edu.uy',  '1971-01-09', 'F', 11),
    (/*12,*/ '33333301', 'Franco',     'Santana',      'Franco.Santana@utec.edu.uy',     '1972-02-09', 'M', 12),
    (/*13,*/ '44444401', 'Noelia',     'Perez',        'Noelia.Perez@utec.edu.uy',       '1973-03-09', 'F', 13),
    (/*14,*/ '55555501', 'Pablo',      'García',       'Pablo.García@utec.edu.uy',       '1974-04-09', 'M', 14),
    (/*15,*/ '66666601', 'Julia',      'Escobar',      'Julia.Escobar@utec.edu.uy',      '1975-05-09', 'F', 15),
    (/*16,*/ '99999911', 'Julio',      'Bauza',        'Julio.Bauza@utec.edu.uy',        '1976-06-09', 'M', 16);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `usuario`
--
INSERT INTO `usuario`(/*`id`,*/ `contrasenia`, `persona_id`) VALUES
    (/* 1,*/ '1234',  1),
    (/* 2,*/ '1234',  2),
    (/* 3,*/ '1234',  3),
    (/* 4,*/ '1234',  4),
    (/* 5,*/ '1234',  5),
    (/* 6,*/ '1234',  6),
    (/* 7,*/ '1234',  7),
    (/* 8,*/ '1234',  8),
    (/* 9,*/ '1234',  9),
    (/*10,*/ '1234', 10),
    (/*11,*/ '1234', 11),
    (/*12,*/ '1234', 12),
    (/*13,*/ '1234', 13),
    (/*14,*/ '1234', 14),
    (/*15,*/ '1234', 15),
    (/*16,*/ '1234', 16);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `admin`
--
INSERT INTO `admin`(`id`) VALUES
    ( 1 );


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `administrativo`
--
INSERT INTO `administrativo`(`id`) VALUES
    (  1 ),
    ( 15 ),
    ( 16 );


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `docente`
--
INSERT INTO `docente`(`id`) VALUES
    (  1 ),
    ( 10 ),
    ( 11 ),
    ( 12 ),
    ( 13 ),
    ( 14 );


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `estudiante`
--
INSERT INTO `estudiante`(`id`) VALUES
    (  1 ),
    ( 2 ),
    ( 3 ),
    ( 4 ),
    ( 5 ),
    ( 6 ),
    ( 7 ),
    ( 8 ),
    ( 9 );


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `sede`
--
INSERT INTO `sede`(/*`id`,*/ `telefono`, `direccion_id`) VALUES 
    (/* 1,*/ '43421234', 17),
    (/* 2,*/ '76751234', 18),
    (/* 3,*/ '19181234', 19);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `area_estudio`
--
INSERT INTO `area_estudio`(/*`id`,*/ `area`) VALUES
    (/*  ,*/ 'matemáticas'                           ),
    (/*  ,*/ 'idiomas'                               ),
    (/*  ,*/ 'ciencias sociales'                     ),
    (/*  ,*/ 'programacion'                          ),
    (/*  ,*/ 'redes y arquitectura de computadoras'  );

-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `tipo_curso`
--
INSERT INTO `tipo_curso`(/*`id`,*/ `tipo`) VALUES
    (/*  ,*/ 'parciales y exámen' ),
    (/*  ,*/ 'sólo exámen'        ),
    (/*  ,*/ 'taller'             ),
    (/*  ,*/ 'pasantía'           );


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `carrera`
--
INSERT INTO `carrera`(/*`id`,*/ `nombre`, `descripcion`, `cant_semestres`) VALUES
    (/* 1,*/ 'Tecnólogo Informático',                                           'El Tecnólogo en Informática forma profesionales con las capacidades para actuar en el desarrollo, puesta en marcha, mantenimiento y administración de sistemas informáticos. Los egresados de esta carrera pueden participar como programadores y  técnicos calificados en tareas de desarrollo de proyectos de variada complejidad.<br>Esta carrera es gestionada por UTEC en el interior del país (Maldonado, San José y Paysandú). Aquellos estudiantes que quieran anotarse a esta carrera en Montevideo deben hacerlo en este link.',                                                                                                                                                                                6),
    (/* 2,*/ 'Licenciatura en ciencia y tecnología de lácteos',                 'La Licenciatura en Ciencia y Tecnología de Lácteos (LCTL) es la primera carrera en el país que forma profesionales universitarios específicamente para la industria láctea.<br>Los egresados de esta carrera cuentan con las competencias necesarias para contribuir en procesos de la industria láctea, implementación de tecnologías, calidad, inocuidad, investigación, desarrollo e innovación de productos e ingredientes lácteos y sus derivados.',                                                                                                                                                                                                                                                                 10),
    (/* 3,*/ 'Licenciatura en Análisis Alimentario',                            'La Licenciatura en Análisis Alimentario forma profesionales para la industria de alimentos y derivados del país con competencias para emprender proyectos de innovación y desarrollo en el sector, lo que permite proyectar al egresado en el ámbito laboral donde va a desarrollar su actividad social y productiva. Al aprobar el cuarto semestre se obtiene el título intermedio de Técnico en Procesos y Análisis Químico.',                                                                                                                                                                                                                                                                                          10),
    (/* 4,*/ 'Tecnólogo en Manejo de sistemas de producción lechera ',          'El Tecnólogo en Manejo de Sistemas de Producción Lechera es una carrera conjunta entre el Consejo de Educación Técnico Profesional/UTU y UTEC, orientada a formar profesionales con alto nivel de especialización en el manejo operativo/productivo de los Sistemas de Producción Lechera (SPL), con fuerte perfil en monitoreo y control del sistema productivo, gestión del capital humano y una visión global y espíritu de proactividad, liderazgo, compromiso social y ética profesional.<br>En el marco de la línea estratégica Acercando Educación y Trabajo, esta carrera se brinda en la modalidad de alternancia entre las empresas formadoras y la institución educativa, a través de prácticas remuneradas.', 6),
    (/* 5,*/ 'Ingeniería en Mecatrónica',                                       'La carrera de Ingeniería en Mecatrónica integra la Mecánica, la Electrónica y la Informática asociadas a los procesos de automatización, con un fuerte componente tecnológico, tanto en el ámbito de la producción como en el resto de la sociedad.<br>El egresado tendrá una visión global sobre el sector y los recursos tecnológicos disponibles, una visión prospectiva, un espíritu emprendedor, un compromiso social y ética profesional.<br>Esta carrera, a los tres años, tiene un título intermedio de Tecnólogo en Mecatrónica, que se imparte conjuntamente con el Consejo de Educación Técnico Profesional/UTU.',                                                                                             10),
    (/* 6,*/ 'Ingeniería en Energías Renovables',                               'La Ingeniería en Energías Renovables se orienta a la formación de profesionales que promuevan, diseñen, implementen y administren el uso de energía limpia a partir de fuentes primarias de energía, como son la energía solar, eólica, hidráulica, entre otros, desde la perspectiva de un desarrollo humano y productivo sustentable en todo el territorio.',                                                                                                                                                                                                                                                                                                                                                           10),
    (/* 7,*/ 'Licenciatura en tecnologías de la Información',                   'La Licenciatura en Tecnologías de la Información tiene como áreas de formación aquellas vinculadas a las líneas de desarrollo /programación, testing e infraestructura tecnológica. La carrera cuenta con un título intermedio de Técnico/a Superior Universitario en Tecnologías de la Información que se obtiene al culminar y aprobar el cuarto semestre del Plan de Estudios. La titulación final de “Licenciado/a en Tecnologías de la Información” se obtiene al culminar y aprobar todos los cursos de los 8 semestres del Plan de estudios.',                                                                                                                                                                     10),
    (/* 8,*/ 'Tecnólogo en Mecatrónica Industrial',                             'La Carrera de Tecnólogo en Mecatrónica Industrial se imparte conjuntamente con el Consejo de Educación Técnico Profesional/UTU. Es una disciplina que integra la Mecánica, la Electrónica y la Informática asociadas a los procesos de automatización industrial, con un fuerte componente tecnológico, tanto en el ámbito de la producción como en el resto de la sociedad, que le permitirá insertarse laboralmente en los contextos productivos de Brasil y Uruguay.<br>El profesional tendrá además una visión global sobre el sector y los recursos tecnológicos disponibles, una visión prospectiva, un espíritu emprendedor, un compromiso social y ética profesional.',                                           6),
    (/* 9,*/ 'Tecnólogo en Jazz y Música creativa',                             'El Tecnólogo forma músicos intérpretes de Jazz y otros ámbitos de su influencia, con una visión abierta del género; abordando a modo de introducción las áreas de composición, arreglos y orquestación.<br>El plan propone desarrollar una modalidad de trabajo en un espacio de aprendizaje, apreciación y valoración de la música como expresión artística, con carácter creativo e integrador.',                                                                                                                                                                                                                                                                                                                       6),
    (/*10,*/ 'Ingeniería en Sistemas de Riego, Drenaje y Manejo de efluentes',  'Este programa se sustenta en un Plan de Estudios orientado a la atención de la problemática del uso racional y sostenible de los recursos hídricos y tratamiento de efluentes en los sectores agropecuario y agroindustrial, dos de los sectores más importantes del desarrollo socioeconómico del país. La elevada especialización y tecnificación que requieren estos sectores en la actualidad para ser competitivos, sumado a la variabilidad climática y a la aplicación de las buenas prácticas ambientales, exigen un mayor conocimiento y una adecuada formación en las técnicas y tecnologías de riego, drenaje y manejo de efluentes.',                                                                         10);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `carrera_sede`
--
INSERT INTO `carrera_sede`(`carrera_id`, `sede_id`) VALUES
    ( 1, 1),
    ( 7, 1),
    ( 1, 2),
    ( 2, 2),
    ( 3, 2),
    ( 4, 2),
    ( 5, 2),
    ( 8, 3),
    ( 9, 3);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `curso`
--
INSERT INTO `curso`(/*`id`,*/ `nombre`, `descripcion`, `max_inasistencias`, `cant_creditos`, `cant_clases`, `area_estudio_id`, `tipo_curso_id`) VALUES
    (/*  1 */ 'Principios de Programación',                   'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   0,  0*8,   4,  1),
    (/*  2 */ 'Matemática Discreta y Lógica 1',               'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     2,   12, 12*8,  1,  1),
    (/*  3 */ 'Inglés Técnico',                               'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     4,   8,  8*8,   2,  1),
    (/*  4 */ 'Estructuras de Datos y Algoritmos',            'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  4,  1),
    (/*  5 */ 'Matemática Discreta y Lógica 2',               'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   6,  6*8,   1,  1),
    (/*  6 */ 'Bases de Datos 1',                             'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  4,  1),
    (/*  7 */ 'Programación Avanzada C++',                    'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   16, 16*8,  4,  1),
    (/*  8 */ 'Bases de Datos 2',                             'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  4,  1),
    (/*  9 */ 'Contabilidad',                                 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     4,   4,  4*8,   1,  1),
    (/* 10 */ 'Programación de Aplicaciones Java',            'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   16, 16*8,  4,  1),
    (/* 11 */ 'Ingeniería de Software',                       'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  5,  1),
    (/* 12 */ 'Probabilidad y Estadística',                   'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     2,   8,  8*8,   1,  1),
    (/* 13 */ 'Pasantia Laboral',                             'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   10, 10*8,  4,  4),
    (/* 14 */ 'Desarrollo de Sitios Web con PHP',             'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  4,  3),
    (/* 15 */ 'Taller de Aplicaciones de Internet Ricas',     'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  4,  3),
    (/* 16 */ 'Taller de Sistemas de Información .NET',       'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  4,  3),
    (/* 17 */ 'Taller de Aprender a gestionar una empresa',   'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   12, 12*8,  4,  3),
    (/* 18 */ 'Proyecto',                                     'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Impedit mollitia perspiciatis commodi voluptatem quibusdam quasi harum magni amet quaerat architecto, expedita, ipsa, quo numquam nam! Necessitatibus error sunt fugiat autem.',     3,   20, 20*8,  4,  3);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `carrera_curso`
--
INSERT INTO `carrera_curso`(`carrera_id`, `curso_id`, `semestre`, `optativo`) VALUES
    ( 1,  1,  1, true  ),
    ( 1,  2,  1, true  ),
    ( 1,  3,  1, false ),
    ( 1,  4,  2, true  ),
    ( 1,  5,  2, true  ),
    ( 1,  6,  2, true  ),
    ( 1,  7,  3, true  ),
    ( 1,  8,  3, true  ),
    ( 1,  9,  3, false ),
    ( 1, 10,  4, true  ),
    ( 1, 11,  4, true  ),
    ( 1, 12,  4, false ),
    ( 1, 13,  5, true  ),
    ( 1, 14,  5, true  ),
    ( 1, 15,  5, true  ),
    ( 1, 16,  6, true  ),
    ( 1, 17,  6, true  ),
    ( 1, 18,  6, true  );


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `previa`
--
INSERT INTO `previa`(/*`id`,*/ `carrera_id`, `curso_id`, `curso_id_previa`, `tipo`) VALUES
    (/*  1 */  1,  4,   1,  'curso' ),
    (/*  2 */  1,  6,   1,  'curso' ),
    (/*  3 */  1,  5,   2,  'curso' ),
    (/*  4 */  1,  6,   2,  'curso' ),
    (/*  5 */  1,  12,  2,  'examen' ),
    (/*  6 */  1,  12,  5,  'examen' ),
    (/*  7 */  1,  11,  4,  'examen' ),
    (/*  8 */  1,  10,  4,  'examen' ),
    (/*  9 */  1,  7,   4,  'curso' ),
    (/* 10 */  1,  11,  6,  'examen' ),
    (/* 11 */  1,  10,  6,  'examen' ),
    (/* 12 */  1,  8,   6,  'curso' ),
    (/* 13 */  1,  11,  7,  'curso' ),
    (/* 14 */  1,  10,  7,  'curso' ),
    (/* 15 */  1,  11,  8,  'curso' ),
    (/* 16 */  1,  10,  8,  'curso' );


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `carrera_area_estudio`
--
INSERT INTO `carrera_area_estudio`(`carrera_id`, `area_estudio_id`, `creditos`) VALUES
    ( 1, 1, 30),
    ( 1, 2, 8),
    ( 1, 4, 146),
    ( 1, 5, 12);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `periodo`
--
INSERT INTO `periodo`(/*`id`,*/ `fecha_inicio`, `fecha_fin`, `numero`, `tipo`) VALUES
    (/*  1 */ '2018-01-01', '2018-01-15', 1, 'IE'),
    (/*  2 */ '2018-02-01', '2018-02-15', 1, 'EX'),
    (/*  3 */ '2018-03-01', '2018-03-15', 1, 'IC'),
    (/*  4 */ '2018-04-01', '2018-04-15', 1, 'LE'),
    (/*  5 */ '2018-05-01', '2018-05-15', 2, 'IE'),
    (/*  6 */ '2018-06-01', '2018-06-15', 2, 'EX'),
    (/*  7 */ '2018-07-01', '2018-07-15', 2, 'IC'),
    (/*  8 */ '2018-08-01', '2018-08-15', 2, 'LE'),
    (/*  9 */ '2018-09-01', '2018-09-15', 3, 'IE'),
    (/* 10 */ '2018-10-01', '2018-10-15', 3, 'EX'),

    (/* 11 */ '2019-01-01', '2019-01-15', 1, 'IE'),
    (/* 12 */ '2019-02-01', '2019-02-15', 1, 'EX'),
    (/* 13 */ '2019-03-01', '2019-03-15', 1, 'IC'),
    (/* 14 */ '2019-04-01', '2019-04-15', 1, 'LE'),
    (/* 15 */ '2019-05-01', '2019-05-15', 2, 'IE'),
    (/* 16 */ '2019-06-01', '2019-06-15', 2, 'EX'),
    (/* 17 */ '2019-07-01', '2019-07-15', 2, 'IC'),
    (/* 18 */ '2019-08-01', '2019-08-15', 2, 'LE'),
    (/* 19 */ '2019-09-01', '2019-09-15', 3, 'IE'),
    (/* 20 */ '2019-10-01', '2019-10-15', 3, 'EX');

-- Truncar tablas antes de insertar `periodo_examen`
INSERT INTO `periodo_examen`(`id`) VALUES
    (2), (6), (10),
    (12), (16), (20);

-- Truncar tablas antes de insertar `periodo_insc_curso`
INSERT INTO `periodo_insc_curso`(`id`) VALUES
    (3), (7),
    (13), (17);

-- Truncar tablas antes de insertar `periodo_insc_examen`
INSERT INTO `periodo_insc_examen`(`id`) VALUES
    (1), (5), (9),
    (11), (15), (19);

-- Truncar tablas antes de insertar `periodo_lectivo`
INSERT INTO `periodo_lectivo`(`id`) VALUES
    (4), (8),
    (14), (18);


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `edicion_curso`
--
INSERT INTO `edicion_curso`(`curso_id`, `sede_id`, `periodo_lectivo_id`)
    SELECT DISTINCT cc.curso_id, cs.sede_id, p.id as 'periodo_lectivo_id'
    FROM carrera_sede cs
        JOIN carrera_curso cc ON cc.carrera_id = cs.carrera_id
        JOIN periodo p
    WHERE p.tipo = 'LE' 
        AND (
            (p.numero = 1 AND cc.semestre % 2 != 0) 
            OR
            (p.numero = 2 AND cc.semestre % 2 = 0)
        )
    ORDER BY cs.sede_id, p.id, cc.curso_id
;

-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `examen`
--
INSERT INTO `examen`(`curso_id`, `sede_id`, `periodo_examen_id`)

    SELECT DISTINCT cc.curso_id, cs.sede_id, p.id as 'periodo_examen_id'
    FROM carrera_sede cs
        JOIN carrera_curso cc ON cc.carrera_id = cs.carrera_id
        JOIN periodo p
    WHERE p.tipo = 'EX' 
    ORDER BY cs.sede_id, p.id, cc.curso_id
;


-- ##############################################################################3

-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `inscripcion_carrera`
--


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `inscripcion_curso`
--


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `inscripcion_examen`
--


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `clase_dictada`
--


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `asistencia`
--


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `postulacion`
--


-- ------------------------------------------------------------------------
-- Truncar tablas antes de insertar `escolaridad`
--


-- ------------------------------------------------------------------------
COMMIT;
