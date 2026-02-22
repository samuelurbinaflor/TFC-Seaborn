# Game Design Document (GDD) – TFC Videojuego: Seaborn

_Separado de su familia desde bebé, Rafael crece en un centro aislado bajo reglas estrictas. Lo único que conoce del exterior son los libros de historia, que hablan de un mundo devastado por catástrofes naturales. Un evento inesperado le hace cuestionarse todo lo que conoce. Explora el centro, infíltrate en zonas prohibidas y descubre la verdad que oculta el lugar al que llamas hogar_

## Información General
Nombre del juego: "Seaborn: February 12th" / "Hijo del mar: 12 de febrero"
Género: Aventura narrativa lineal, sigilo, exploración, pixel art, 2.5D, scroll lateral
Plataforma: PC
Target:  PEGI 12, jugador que le guste leer, baja dificultad

## Historia del Juego

Rafael es secuestrado de los brazos de su madre con apenas 4 meses. Sus padres llevan años buscándolo, sin saber que Rafael está bajo el control del **C.O.A.C.** (Complejo Operativo de Avances Costeros), el centro donde crecerá completamente aislado.  

Dentro del COAC, a Rafael y a los demás niños les hacen creer que hubo una catástrofe devastadora el **12 de febrero de 2050**, y que la ciudad de Cádiz quedó totalmente inundada. Para reforzar esta mentira, el centro utiliza **hologramas y simulaciones** que muestran la ciudad inundada a través de las ventanas.

Todos los niños tienen aproximadamente la misma edad, lo que a Rafael le resulta extraño, aunque nunca se le explica por qué.  

Rafael crece creyendo que sus padres fallecieron en la catástrofe, aunque siempre le ha sorprendido cómo logró sobrevivir siendo un bebé. Se le dice que _Pepa_ una **anciana** lo rescató y lo llevó al COAC. Sin embargo, la anciana no es tan buena como parece; fue quien lo secuestró por mandato del COAC.

### Puntos de Giro

1. **Primer punto de giro:** La anciana fallece y deja una nota invitando a Rafael a descubrir la verdad.  
2. **Segundo punto de giro:** Explorando zonas prohibidas, Rafael descubre archivos confidenciales y comprende que todo lo que le contaron era un experimento: **Cádiz nunca se inundó** y sus padres siguen vivos.

Final: Rafael consigue escapar del centro y ve Cádiz completamente funcional.

---

## Contexto

- **Fecha actual:** 15 de octubre de 2067 (17 años desde la catástrofe, Rafael está a punto de cumplir 18).  
- **Fecha de la catástrofe:** 12 de febrero de 2050 (referencia al Carnaval de Cádiz; Rafael tenía 4 meses).  
- **Centro de confinamiento:** **C.O.A.C.** – Complejo Operativo de Avances Costeros.  
- **Proyecto secreto:** **Proyecto G.A.D.I.R.** – Generación Aislada de Desarrollo Identitario Restringido.  
- **Lema del centro:** "Por un futuro seguro".
- **Ambientación:** instalaciones futuristas y tecnología avanzada, con simulaciones realistas del exterior inundado.

---

## Personajes
### Protagonista
- **Nombre:** Rafael Azara Flores  
- **Fecha de nacimiento:** 28 de octubre de 2049 (referencia a Rafael Alberti)
- **Signo Zodiacal:** Escorpio
- **Edad actual:** 17 años (cumple 18 en el juego)  
- **Carácter:**  
  - Intenso y apasionado
  - Curioso e intuitivo
  - Desconfiado pero leal a los pocos en los que confía
  - Sensible y empático
  - Rebelde e impulsivo

### Antagonista (Anciana)
- **Nombre:** Josefa (Pepa)
- **Fecha de nacimiento:** 19 de marzo de 1998 (referencia a la constitución española La Pepa)
- **Signo Zodiacal:** Piscis
- **Edad actual:** 70
- **Carácter:**
  - Astuta y manipuladora
  - Ambigua moralmente, aparenta ser protectora pero sigue órdenes del COAC
  - Carácter dominante, controla a los niños mediante miedo y autoridad

### Amigo
- **Nombre:** Alejandro Ortega Ramos  
- **Fecha de nacimiento:** 30 de noviembre de 2047 (referencia a la fecha de nacimiento del creador (yo))  
- **Edad actual:** 19 años 
- **Carácter:**  
  - Aventurero y curioso
  - Optimista y motivador
  - Directo y franco, a veces un poco impulsivo
  - Protector con Rafael y los demás
    
### NPCs Secundarios
- Niños del COAC: grupo de compañeros de edad similar que interactúan con Rafael.
- Científicos / guardias del COAC: autoridad del centro, sirven como obstáculos o fuentes de información.
  
---

## Desarrollo Narrativo (PMV)

**Acto 1 – Rutina**  
- Zona común del centro (aula, comedor, pasillo, dormitorio)  
- Ciclo día/noche básico  
- Interacción con 2–3 NPCs  
- Primeras dudas sobre la catástrofe (muy light)  
- Introducción al sistema de documentos  

**Acto 2 – Primera Infiltración Nocturna**  
- Zona restringida pequeña (archivo o despacho)  
- 1–2 guardias con patrón simple  
- Introducción al sigilo: cono de visión, ruido, agacharse, oscuridad  
- Presentación del proyecto secreto GADIR (Rafael no llega a leer nada porque casi lo descubren)

**Punto de Giro:** muerte de la anciana y nota que invita a buscar la verdad  
**Cierre:** Rafael mirando por la ventana; simulación glitchea; pantalla en negro  

---
## Mecánicas de Juego

- **Movimiento básico:** izquierda/derecha, arriba/abajo (ilusión de profundidad)  
- **Acciones:**  
  - Agacharse para ocultarse  
  - Andar agachado para pasar desapercibido  
  - Arrastrarse para sitios estrechos (ExPMV)  
  - Interactuar con objetos y puertas  
- **Ciclo día/noche:**  
  - Día: explorar zonas comunes, interactuar con NPCs  
  - Noche: acceso a zonas restringidas, sigilo y evitar guardias y cámaras  
  - Avance: dormir, evento narrativo, completar objetivo  
- **Inventario:**  
  - 3 slots de acceso rápido  
  - Mochila con 10 espacios  
  - Menú tipo galería para documentos, mapas y pistas  
- **Sigilo:**  
  - Cono de visión de guardias, línea de visión bloqueada por objetos  
  - Sistema de ruido: correr > alto, caminar > medio, agachado > bajo, arrastrarse > mínimo (ExPMV)  
  - Zonas oscuras reducen visibilidad, linterna aumenta visión pero riesgo de detección (ExPMV)

---

## Mapas Mínimos

- Dormitorio  
- Pasillo principal  
- Comedor / zona común  
- Aula  
- Oficina administrativa (restringida)  
- Archivo confidencial  
- Habitación de la anciana / hospital  

---

## Objetos clave (Narrativa)

- Linterna  
- Llaves de salas secretas  
- Documentos: archivos oficiales C.O.A.C y anotaciones a mano con pistas, códigos y localizaciones  
