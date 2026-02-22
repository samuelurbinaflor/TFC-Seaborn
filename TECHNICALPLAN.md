# Technical Plan – TFC Videojuego

## Personajes

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

## Producto Mínimo Viable (PMV)

### Desarrollo Narrativo 

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

### Mecánicas Incluidas
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

## Lista completa de Assets PMV

- **Personajes:** Rafael, anciana, 1 guardia, 2 NPC genéricos  
- **Props / Objetos:** linterna, llaves, documentos, muebles  
- **UI:** HUD con slots, inventario, texto de interacción, menú de documentos  
- **Animaciones cortas:** caminar, agacharse, andar agachado, interactuar, idle, waiting  
- **Mapa mínimo necesario:** Dormitorio, Pasillo principal, Comedor / zona común, Aula, Oficina administrativa (restringida), Habitación de la anciana / hospital
