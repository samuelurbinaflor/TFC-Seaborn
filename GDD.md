# Game Design Document (GDD) – TFC Videojuego: Seaborn

_Separado de su familia desde bebé, Rafael crece en un centro aislado bajo estrictas reglas. Lo único que conoce del exterior son los libros de historia, que hablan de un mundo devastado por catástrofes naturales. Un evento inesperado le hace cuestionarse todo lo que conoce. Explora el centro, infíltrate en zonas prohibidas y descubre la verdad que oculta el lugar al que llamas hogar._

---

## Información General

- **Nombre del juego:** "Seaborn: February 12th" / "Hijo del mar: 12 de febrero"  
- **Género:** Aventura narrativa lineal, sigilo, exploración, pixel art, vista lateral 2.5D, scroll lateral  
- **Plataforma:** PC  
- **Target:** PEGI 12, jugadores que disfruten de la lectura, baja dificultad  

---

## Historia del Juego

Rafael es secuestrado de los brazos de su madre con apenas 4 meses. Sus padres llevan años buscándolo, sin saber que Rafael está bajo el control del **C.O.A.C.** (Complejo Operativo de Avances Costeros), el centro donde crecerá completamente aislado.  

Dentro del COAC, a Rafael y a los demás niños les hacen creer que hubo una catástrofe devastadora el **12 de febrero de 2050**, y que la ciudad de Cádiz quedó totalmente inundada. Para reforzar esta mentira, el centro utiliza **hologramas y simulaciones** que muestran la ciudad inundada a través de las ventanas.

Todos los niños tienen aproximadamente la misma edad, lo que a Rafael le resulta extraño, aunque nunca se le explica por qué.  

Rafael crece creyendo que sus padres fallecieron en la catástrofe, aunque siempre le ha sorprendido cómo logró sobrevivir siendo un bebé. Se le dice que _Pepa_, una **anciana**, lo rescató y lo llevó al COAC. Sin embargo, la anciana no es tan buena como parece; fue quien lo secuestró por mandato del COAC.

### Puntos de Giro

1. **Primer punto de giro:** La noche de su cumpleaños, Rafael se infiltra en una sala prohibida con su amigo Alejandro como acto de rebeldía. Sin buscarlo, encuentran un archivador con su nombre; en la portada pone: "Proyecto confidencial: G.A.D.I.R". Cuando va a abrirlo, escuchan un ruido y se van corriendo. Aun así, Rafael se queda con la espina de que será ese "proyecto confidencial" al que pertenece sin saberlo.  
2. **Segundo punto de giro:** La anciana fallece y deja una nota invitando a Rafael a descubrir la verdad.  
3. **Tercer punto de giro:** Explorando zonas prohibidas, Rafael descubre los archivos confidenciales y comprende que todo lo que le contaron era un experimento: **Cádiz nunca se inundó** y sus padres siguen vivos.

**Final:** Rafael consigue escapar del centro y ve Cádiz completamente funcional.

---

## Contexto

- **Fecha actual:** 15 de octubre de 2067 (17 años desde la catástrofe; Rafael está a punto de cumplir 18)  
- **Fecha de la catástrofe:** 12 de febrero de 2050 (referencia al Carnaval de Cádiz; Rafael tenía 4 meses)  
- **Centro de confinamiento:** **C.O.A.C.** – Complejo Operativo de Avances Costeros  
- **Proyecto secreto:** **Proyecto G.A.D.I.R.** – Generación Aislada de Desarrollo Identitario Restringido  
- **Lema del centro:** "Por un futuro seguro"  
- **Ambientación:** Instalaciones futuristas y tecnología avanzada, con simulaciones realistas del exterior inundado  

---

## Desarrollo Narrativo (DEMO)

### Acto 1 – Rutina
- Empieza en el aula, justo al terminar la clase  
- Vas a comer, das una vuelta por el centro y hablas con algún NPC que te entrega un objeto sin importancia (introducción al inventario)  
- Te encuentras con Alejandro, tu mejor amigo, quien te comenta que tiene algo que enseñarte; os veis esa noche en el despacho del director. Te entrega una nota con un código y una linterna  
- Vas al dormitorio, duermes un poco y por la noche te levantas para la aventura  

**Checkpoint**

### Acto 2 – Primera Infiltración Nocturna
- Por la noche caminas por pasillos hasta el despacho, esquivando guardias y cámaras (introducción al sigilo; si te pillan, checkpoint)  
- Al llegar al despacho, introduces el código y te cuelas; Alejandro te está esperando dentro  
- En la mesa ves un archivador del que sobresale un papel con tu nombre, en la portada pone "Proyecto confidencial G.A.D.I.R". Justo cuando lo vas a abrir, escuchas un ruido y escapas (puedes implementar decisiones que cambien el resultado)  
- Vas a la habitación a dormir, perturbado por el archivador  

**Checkpoint**

### Acto 3 – Muerte de la Anciana
- Al día siguiente el director te convoca a su despacho; crees que es porque te pillaron  
- Resulta que te da la noticia de que Pepa, la anciana que te rescató, está a punto de fallecer  
- Vas a verla al hospital o su habitación, hablas con ella, te cuenta algunas cosas y te entrega una nota  
- La anciana fallece  
- Vuelves a tu cuarto, melancólico, miras por la ventana, abres la nota y ves un mensaje del tipo: "Descubre la verdad, no todo lo que ves es cierto". Mientras miras por la ventana, el paisaje natural parece glitchar por un segundo... ¿ha sido una ilusión o un holograma?

**Fin de la demo**

---

## Personajes

### Protagonista
- **Nombre:** Rafael Azara Flores  
- **Fecha de nacimiento:** 28 de octubre de 2049 (referencia a Rafael Alberti)  
- **Signo Zodiacal:** Escorpio  
- **Edad actual:** 17 años (cumple 18 en el juego)  
- **Carácter:** intenso, apasionado, curioso, intuitivo, desconfiado pero leal, sensible, empático, rebelde e impulsivo  

### Antagonista (Anciana)
- **Nombre:** Josefa (Pepa)  
- **Fecha de nacimiento:** 19 de marzo de 1998 (referencia a la Constitución Española "La Pepa")  
- **Signo Zodiacal:** Piscis  
- **Edad actual:** 70  
- **Carácter:** astuta y manipuladora, moral ambigua, aparenta ser protectora pero sigue órdenes del COAC, dominante  

### Amigo
- **Nombre:** Alejandro Ortega Ramos  
- **Fecha de nacimiento:** 30 de noviembre de 2047 (referencia al creador)  
- **Edad actual:** 19 años  
- **Carácter:** aventurero, curioso, optimista, motivador, directo, protector  

### NPCs Secundarios
- Niños del COAC: compañeros de edad similar que interactúan con Rafael  
- Científicos / guardias del COAC: autoridades del centro, sirven como obstáculos o fuentes de información  

---

## Mecánicas de Juego

### Protagonista
- **Movimiento básico:** izquierda/derecha, arriba/abajo (ilusión de profundidad)  
- **Acciones:** agacharse, andar agachado, arrastrarse (para sitios estrechos, ExDEMO), interactuar con objetos y puertas  
- **Ciclo día/noche:**  
  - Día: explorar zonas comunes, interactuar con NPCs  
  - Noche: acceso a zonas restringidas, sigilo y evitar guardias y cámaras  
  - Avance: dormir, eventos narrativos, completar objetivos  
- **Inventario:** 3 slots de acceso rápido, mochila con 10 espacios, menú tipo galería para documentos, mapas y pistas  
- **Sigilo:**  
  - Cono de visión de guardias, línea de visión bloqueada por objetos  
  - Sistema de ruido: correr > alto, caminar > medio, agachado > bajo, arrastrarse > mínimo  
  - Zonas oscuras reducen visibilidad; linterna aumenta visión pero riesgo de detección  

### Guardias
- **Movimiento básico:** recorrido en bucle  
- **Acciones:** andar, apuntar con linterna si escuchan ruido  

### NPCs
- No se mueven, animación idle  

---

## Escenario (por completar)

- Dormitorio  
- Pasillo principal  
- Comedor / zona común  
- Aula  
- Oficina administrativa (restringida)  
- Archivo confidencial  
- Habitación de la anciana / hospital  
*Imagen mapa*

---

## Arte y Estilo Visual (por completar)

*Descripción del arte*  
*Imagen de paleta de colores*  
*Referencia al concept art*

---

## Audio (por completar)

- Música: estilo, ejemplos, referencias  
- Efectos de sonido: acciones, ambientes, UI  
- Voces cinemáticas  

---

## Interfaz y Experiencia de Usuario (UI/UX) (por completar)

- Menús, HUD, iconos  
- Flujos de usuario (cómo navegar el juego)  
- Pantallas especiales: inventario, mapas, ajustes  

---

## Requerimientos Técnicos (por completar)

- Resolución, frame rate objetivo  
- Motores o frameworks a usar (Unity, Godot, Unreal…)  
- Plataformas y dispositivos soportados  
- Límites técnicos (número de enemigos, tamaño de niveles…)  

---

## Plan de Producción (por completar)

- Cronograma / roadmap de desarrollo  
- Recursos necesarios (artistas, programadores, sonido…)  
- MVP / prototipo: mínimo para probar el juego  
- Post-lanzamiento: DLCs, actualizaciones, monetización si aplica  

---

## Extra (por completar)

- Marketing / monetización (si es comercial)  
- Analíticas y métricas de éxito  
- Referencias visuales o moodboards  
- Testeo y plan de feedback
