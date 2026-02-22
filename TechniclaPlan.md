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
  - Opcional: Correr, Tumbarse y arrastrarse, Empujar

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
  - Arrastrarse para sitios estrechos  
  - Interactuar con objetos y puertas  
- **Ciclo día/noche:**  
  - Día: explorar zonas comunes, interactuar con NPCs  
  - Noche: acceso a zonas restringidas, sigilo y evitar guardias y cámaras  
  - Avance: dormir, evento narrativo, completar objetivo  
- **Inventario:**  
  - 3 slots de acceso rápido  
  - Mochila con 10 espacios  
  - Menú tipo galería para documentos, mapas y pistas
- **Sigilo**
  - Cono de visión de guardias, línea de visión bloqueada por objetos  
  - Sistema de ruido: correr > alto, caminar > medio, agachado > bajo, arrastrarse > mínimo  
  - Zonas oscuras reducen visibilidad, linterna aumenta visión pero riesgo de detección  

---

## Objetos Clave (Producción)

- Linterna  
- Llaves de salas secretas  
- Objetos o dinero para sobornar a NPCs  
- Documentos: archivos oficiales C.O.A.C y anotaciones a mano con pistas, códigos y localizaciones  

---

## Producto Mínimo Viable (PMV)

### Contenido
- Cinemáticas de introducción
- Presentación del mundo (C.O.A.C.)
- Introducción al sigilo  
- Primer punto de giro (anciana fallece y deja nota)

### Mecánicas Incluidas
- Movimiento 4 ejes  
- Sistema básico de sigilo  
- 1 tipo de guardia  
- 1 objeto clave: linterna  
- Inventario simple  
- Sistema de documentos  
- Transiciones entre salas    

### Mecánicas Excluidas para PMV
- Sobornos, economía compleja, persecuciones, tumbarse, múltiples tipos de enemigos, sistema avanzado de ruido e iluminación, mapa grande  

---

## Assets Mínimos

**Personajes:** Rafael, anciana, 1 guardia, 2 NPC genéricos  

**UI:** HUD simple con slot linterna, texto de interacción, menú de documentos
