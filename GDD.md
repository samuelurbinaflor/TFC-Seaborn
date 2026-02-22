# Game Design Document (GDD) – TFC Videojuego: Seaborn

_Separado de su familia desde bebé, Rafael crece en un centro aislado bajo estrictas reglas. Lo único que conoce del exterior son los libros de historia, que hablan de un mundo devastado por catástrofes naturales. Un evento inesperado le hace cuestionarse todo lo que conoce. Explora el centro, infíltrate en zonas prohibidas y descubre la verdad que oculta el lugar al que llamas hogar._

---

# Índice

1. [Información General](#información-general)  
2. [Mecánicas de Juego](#mecánicas-de-juego)  
   - [Protagonista](#protagonista)  
   - [Guardias](#guardias)  
   - [NPCs](#npcs)  
3. [Escenario](#escenario-por-completar)  
4. [Arte y Estilo Visual](#arte-y-estilo-visual-por-completar)  
5. [Audio](#audio-por-completar)  
6. [Interfaz y Experiencia de Usuario (UI/UX)](#interfaz-y-experiencia-de-usuario-uiux-por-completar)  
7. [Requerimientos Técnicos](#requerimientos-técnicos-por-completar)  
8. [Plan de Producción](#plan-de-producción-por-completar)  
9. [Post-Producción](#post-producción-por-completar)  
10. [Controles / Input](#controles--input)  
11. [Personajes – Tamaño y Animaciones](#personajes-tamaño-y-animaciones)  
12. [Entorno / Escenario](#entorno--escenario)  
13. [Arquitectura de Datos / Save System](#arquitectura-de-datos--save-system)  
14. [Tilesets y Layering Detallado](#tilesets-y-layering-detallado)  
15. [Producto Mínimo Viable](#producto-mínimo-viable)

---

## Información General

- **Nombre del juego:** "Seaborn: February 12th" / "Hijo del mar: 12 de febrero"  
- **Género:** Aventura narrativa lineal, sigilo, exploración, pixel art, vista lateral 2.5D, scroll lateral  
- **Plataforma:** PC  
- **Target:** PEGI 12, jugadores que disfruten de la lectura, baja dificultad  

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

- Motor: Godot  
- Resolución, frame rate objetivo  
- Plataformas y dispositivos soportados  
- Límites técnicos (número de enemigos, tamaño de niveles…)  

---

## Plan de Producción (por completar)

- Cronograma / roadmap de desarrollo  
- Recursos necesarios (artistas, programadores, sonido…)  
- MVP / prototipo: mínimo para probar el juego  
- Post-lanzamiento: DLCs, actualizaciones, monetización si aplica  

---

## Post-Producción (por completar)

- Marketing / monetización (si es comercial)  
- Analíticas y métricas de éxito  
- Referencias visuales o moodboards  
- Testeo y plan de feedback

---

## Controles / Input

- **Teclado / XBOX Controller:**  
  - Movimiento: flechas, WASD / stick izquierdo  
  - Agacharse: Ctrl / B  
  - Interactuar: E / A  
  - Abrir inventario: Q / Y  
  - Usar objeto rápido: 1-3 / X (Cambiar con LB, RT)  
  - Menú: TAB / menu  
  - UI: ratón / joystick

---

## Personajes (Tamaño y Animaciones)

- **Tamaño:** 32×64 px  
- **Orientaciones:** lado, frente, espalda  
- **Animaciones:**
  - Idle  
  - Waiting  
  - Caminar (izq/der/frente/espalda)  
  - Agacharse y andar agachado (sigilo)  
  - Interacción (abrir puerta, recoger objetos)  
  - Extra: Correr, Tumbarse y arrastrarse, Empujar (ExPMV)  

---

## Entorno / Escenario

- **Aspect ratio:** 16:9  
- **Resolución:** 320×180 px  
- **Escalado:** Pixel perfect (x4, x5, etc.)  
- **Capas de profundidad:** UI, foreground, midground (personajes y objetos), background, far background  
- **Tipos de tiles o bloques:** suelo, paredes, plataformas, escaleras  

---

## Arquitectura de datos / Save System

- Guardado de progreso: checkpoints por sala o eventos narrativos importantes  
- Inventario: lista de objetos recogidos y slots usados  
- Documentos leídos: flags para mostrar en menú de documentos  
- Estados de NPCs: posición, patrón de guardia, interacción realizada  
- Variables de eventos narrativos: puntos de giro activados, cinemáticas vistas  

---

## Tilesets y Layering Detallado

- Lista de tiles definitivos (suelo, paredes, escaleras, props)  
- Capas: foreground, midground, background, far background  
- Colisiones: tiles sólidos vs decorativos  
- Clipping: zonas donde el personaje puede pasar por detrás/encima de objetos  

---

## Producto Mínimo Viable

### Mecánicas Incluidas PMV
- Movimiento 4 ejes  
- Sistema básico de sigilo  
- 1 tipo de guardia  
- 1 objeto clave: linterna  
- Inventario simple  
- Sistema de documentos  
- Transiciones entre salas  
- Interacción con NPCs

### Mecánicas Excluidas para PMV
- Sobornos, economía compleja, persecuciones, tumbarse, múltiples tipos de enemigos, sistema avanzado de ruido e iluminación, mapa grande  

### Lista completa de Assets PMV
- **Personajes:** Rafael, anciana, 1 guardia, 2 NPC genéricos  
- **Props / Objetos:** linterna, llaves, documentos, muebles  
- **UI:** HUD con slots, inventario, texto de interacción, menú de documentos  
- **Animaciones cortas:** caminar, agacharse, andar agachado, interactuar, idle, waiting  
- **Mapa mínimo necesario:** Dormitorio, Pasillo principal, Comedor / zona común, Aula, Oficina administrativa (restringida), Habitación de la anciana / hospital

---

