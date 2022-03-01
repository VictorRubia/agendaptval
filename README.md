<img src="https://secretariageneral.ugr.es/pages/ivc/descarga/_img/vertical/ugrmarca01color_2/!/download" align="right" width="20%" />

# Agenda para Programa de Transición a la Vida Adulta y Laboral
> 4º de Grado en Ingeniería Informática de la especialidad en Ingeniería del Software.

## Índice
- [Agenda para Programa de Transición a la Vida Adulta y Laboral](#agenda-para-programa-de-transición-a-la-vida-adulta-y-laboral)
  - [Índice](#índice)
  - [Introducción](#introducción)
  - [Problema a resolver](#problema-a-resolver)
  - [Requerimientos del pliego técnico](#requerimientos-del-pliego-técnico)
  - [Proceso de Desarrollo](#proceso-de-desarrollo)
    - [1ª Iteración](#1ª-iteración)
    - [2ª y 3ª Iteración](#2ª-y-3ª-iteración)
  - [Tecnologías utilizadas](#tecnologías-utilizadas)
  - [Diagrama de Clases](#diagrama-de-clases)
  - [Manual para la ejecución](#manual-para-la-ejecución)
  - [Producto Final](#producto-final)
  - [Licencia](#licencia)

## Introducción

Este proyecto se realizó en el marco de la asignatura Dirección y Gestión de Proyectos de la titulación de Grado en Ingeniería Informática de la Universidad de Granada, que tiene como competencia específica “el conocimiento y aplicación de elementos básicos de economía y de gestión de recursos humanos, organización y planificación de proyectos, así como la legislación, regulación y normalización en el ámbito de los proyectos informáticos, de acuerdo con los conocimientos adquiridos”. Es prioritaria para la asignatura la línea estratégica orientada a formar al alumnado en la adquisición de competencias y habilidades como director y gestor de un proyecto, por lo que se hace hincapié en el aprendizaje práctico y en el trabajo en equipo.

Este curso hemos colaborado con el Colegio de Educación Especial [Clínica San Rafael](https://www.sjdgranada.es/). Este es un centro concertado perteneciente a la Orden Hospitalaria de San Juan de Dios de Granada, que atiende alumnos con diversidad funcional desde los 3 hasta los 21 años de edad.

El proyecto se orienta a los estudiantes de PTVAL (Programa de transición a la vidaadulta y laboral). En este centro utilizan una metodología de enseñanza-aprendizaje llamada TEACCH (“Tratamiento y Educación de Niños con Autismo y Problemas Asociados de Comunicación“.) 

## Problema a resolver

En la metodología anteriormente mencionada es imprescindible:

- Presentar la información con apoyo visual.
  - Estructurar visualmente el espacio físico organizando zonas de trabajo con apoyos visuales. 
  - Estructurar visualmente las tareas, usando la agenda visual o el horario individual para anticipar que se va a hacer en cada momento y dónde.
- Trabajar el concepto tiempo, para que sepa que todo tiene un principio y un fin y evitar frustraciones. 
- Crear rutinas flexibles para facilitar la comprensión de las tareas y que se pueda predecir el orden. 
- Trabajar de manera individualizada: fomentando la autonomía, iniciativa, predisposición, motivación por aprender por sí solos...

Todo lo anterior hace que sea necesario contar con una agenda individualizada en forma de aplicación para dar más autonomía a los estudiantes.

## Requerimientos del pliego técnico

Las principales características de la agenda son:

1. La aplicación debe ser extremadamente sencilla e intuitiva, a ser posible móvil.
2. Debe permitir al centro organizar, para cada estudiante, las tareas que debe hacer, dónde y en qué momento y saber si el estudiante las realiza (cuándo las marca como hechas). 
3. Hay varios tipos de tareas:
   - “Fijas”: tienen una explicación en forma de texto, secuencia de pictogramas o imágenes para indicar los pasos a seguir, vídeo, o combinación de formatos (texto con imágenes). El estudiante ve la explicación y la realiza físicamente. Por ejemplo, poner el microondas.
   - “Comandas”: Tres tipos de actividades de petición (comedor, materiales escolares, fotocopiadora/plastificado). El estudiante necesita marcar, e introducir datos en un formulario, además de realizar la tarea física. Por ejemplo, llevar material escolar a un aula que lo ha pedido, o hacer inventario del material que hay en el almacén.
4. Hay un “pool” de tareas y se cogen de esa lista para crear la agenda de cada alumno. Las tareas las crea el administrador del centro y los educadores supervisan. Algunos datos de tareas las pueden completar los educadores (por ejemplo, qué materiales o fotocopias necesitan para su aula).
5. Opcionalmente el estudiante puede subir un video o foto para mostrar el resultado de la tarea y recibir feedback; pero marcar la tarea como hecha o no hecha es obligatorio.
6. Cada día y en determinados rangos de horas hay estudiantes diferentes encargados de tareas de tipo comandas. Se tiene que saber quién es el encargado de cada tarea cada día.
7. Hay tareas que no tienen una fecha concreta de realización, sino que se mandan en una fecha y deben estar completadas para otra fecha. Para estas tareas es necesario mandar un recordatorio desde el mismo día de vencimiento y en los días siguientes hasta que el estudiante la realice o el profesor decida no darle más oportunidades. Para estas tareas, en la agenda se pone un link (como una tarea más) a una lista de tareas pendientes para ese día. Cuando se toca la tarea muestra la lista de pendientes y el día en que se acaba el plazo salta una alerta.
8. Hay que gestionar consentimientos para actividades específicas. También hay que confirmar que llegan a su destino cuando van a cursos fuera del centro (asociado a cada tarea debe haber un consentimiento de los padres o del tutor legal).
9. Hacen falta varios chats. Uno asociado a cada educador o grupo de educadores que supervisan a cada estudiante. Otro asociado a una tarea para que el estudiante plantee dudas o comentarios. En él participan todos los profesores involucrados en esa tarea.
10. La aplicación debe mostrar un historial semanal de lo que el estudiante ha hecho con gráfica de resumen visible para el educador y el estudiante. La gráfica debe ser sencilla para que resulte fácilmente comprensible a los estudiantes.

Ya existen aplicaciones similares pero parece que resultan complejas para los estudiantes por no ser muy accesibles ni estar adaptadas a discapacidad cognitiva. El otro problema de las aplicaciones existentes es que al parecer la creación de las agendas de los estudiantes requiere mucho trabajo por parte de los educadores.

A estos requerimientos se le sumaron posteriormente los añadidos por los propios clientes en diversas reuniones que pudimos tener con ellos.

## Proceso de Desarrollo

El proyecto se desarrolla en __tres iteraciones__ de duración fija de unas 3-4 semanas. La ejecución del contrato no es prorrogable siendo el 25 de enero de 2022 fecha límite para su presentación.

Además en fechas intermedias deben de entregarse hitos y documentos acreditativos de su evolución.

Todos los siguientes ficheros se pueden encontrar en los directorios siguiendo este [enlace](/docs/)

### 1ª Iteración

En esta primera iteración se elaboraron los siguientes puntos.

- La propuesta técnica del proyecto, incluyendo la planificación temporal global y de la primera iteración.
- Manual de coordinación.
- Especificación inicial.
- Documento de planificación de la usabilidad y accesibilidad.
- Diseño (diagrama de arquitectura, de base de datos, primeros bocetos de la interfaz).
- Informe de realización.
- Registro de horas dedicadas por cada participante.
- Actas de reuniones.

### 2ª y 3ª Iteración

En la segunda iteración se elaboraron los siguientes puntos.

- Planificación de cada una de las iteraciones (2ª y 3ª)
- Documentos de análisis, diseño.
- Documentos de gestión de usabilidad y accesibilidad.
- Código generado.
- Informe de realización.
- Registro de horas por cada miembro.
- Actas de reuniones.
- Manual de usuario.
- Fichero de presentación.

## Tecnologías utilizadas

En este proyecto hemos usado un contenedor Docker que gestiona la base de datos (MySQL) de la aplicación, junto con un servidor de ficheros para los contenidos multimedia y PHPMyAdmin.

## Diagrama de Clases

![Diagrama](/docs/3º%20Iteración/diagramaClases.svg)

## Manual para la ejecución

Puede seguir el documento en este [enlace](/docs/3º%20Iteración/MANUAL_EJECUCIÓN.pdf) para la correcta ejecución de la aplicación.
## Producto Final

A continuación, se muestran capturas del producto finalizado.

| Login Accesible | Opciones Profesor | Listado de Tareas     |
|---|---|-------|
| ![Login Facil](/docs/Presentación%20Final/login_facil.png) | ![Opciones del Profesor](/docs/Presentación%20Final/homepage_profesor.png)  | ![Listado de Tareas](/docs/Presentación%20Final/listado_tareas_profe.jpg) |


| Editar Tarea | Integración ARASAAC | Asignación Tareas     |
|---|---|-------|
| ![Editar Tarea](/docs/Presentación%20Final/editar_tarea.jpg) | ![Integración ARASAAC](/docs/Presentación%20Final/arasaac.jpg)  | ![Asignación Tareas](/docs/Presentación%20Final/asignacion_tarea.png) |


| Inventario | Menú y Platos | Chat |
|---|---|-------|
| ![Inventario](/docs/Presentación%20Final/inventario.png) | ![Menú y Platos](/docs/Presentación%20Final/platos.png)  | ![Chat](/docs/Presentación%20Final/chat.png) |

| Página de Inicio Alumnos | Visualización de Tarea | Retroalimentación |
|---|---|-------|
| ![Página de Inicio Alumnos](/docs/Presentación%20Final/homepage_alu_picto.png) | ![Visualización de Tarea](/docs/Presentación%20Final/tarea.jpg)  | ![Retroalimentación](/docs/Presentación%20Final/retroalimentacion.jpg) |

## Licencia
[![CC0](https://licensebuttons.net/l/by-nc-nd/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-nd/4.0/)