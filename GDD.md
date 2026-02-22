# Historia del Juego

Rafael es secuestrado de los brazos de su madre con apenas 4 meses. Sus padres llevan años buscándolo, sin saber que Rafael está bajo el control del **C.O.A.C.** (Complejo Operativo de Avances Costeros), el centro donde crecerá completamente aislado.  

Dentro del COAC, a Rafael y a los demás niños les hacen creer que hubo una catástrofe devastadora el **12 de febrero de 2050**, y que la ciudad de Cádiz quedó totalmente inundada. Para reforzar esta mentira, el centro utiliza **hologramas y simulaciones** que muestran la ciudad inundada a través de las ventanas.

Todos los niños tienen aproximadamente la misma edad, lo que a Rafael le resulta extraño, aunque nunca se le explica por qué.  

Rafael crece creyendo que sus padres fallecieron en la catástrofe, aunque siempre le ha sorprendido cómo logró sobrevivir siendo un bebé. Se le dice que _Manuela_ una **anciana** lo rescató y lo llevó al COAC. Sin embargo, la anciana no es tan buena como parece; fue quien lo secuestró por mandato del COAC.

## Puntos de Giro

1. **Primer punto de giro:** La anciana fallece y deja una nota invitando a Rafael a descubrir la verdad.  
2. **Segundo punto de giro:** Explorando zonas prohibidas, Rafael descubre archivos confidenciales y comprende que todo lo que le contaron era un experimento: **Cádiz nunca se inundó** y sus padres siguen vivos.

La historia culmina cuando Rafael consigue escapar del centro y ve Cádiz completamente funcional.

---

# Contexto

- **Fecha actual:** 15 de octubre de 2067 (17 años desde la catástrofe, Rafael está a punto de cumplir 18).  
- **Fecha de la catástrofe:** 12 de febrero de 2050 (referencia al Carnaval de Cádiz; Rafael tenía 4 meses).  
- **Centro de confinamiento:** **C.O.A.C.** – Complejo Operativo de Avances Costeros.
- **Proyecto secreto:** **Proyecto G.A.D.I.R.** – Generación Aislada de Desarrollo Identitario Restringido.
- **Lema del centro:** "Por un futuro seguro".

---

# Protagonista

- **Nombre:** Rafael Azara Flores  
- **Fecha de nacimiento:** 28 de octubre de 2049 (referencia a Rafael Alberti)  
- **Edad actual:** 17 años (cumple 18 en el juego)  
- **Carácter:**  
  - Curioso e inteligente, siempre cuestiona lo que le dicen  
  - Sensible y empático, preocupado por los demás jóvenes del centro  
  - Rebelde e impulsivo, lo que lo lleva a explorar áreas prohibidas  
  - Observador y desconfiado  

---

# Datos Técnicos, Mecánicas, Sprites y Animaciones

## Personajes

- **Tamaño:** 32×64 px  
- **Orientaciones:** lado, frente, espalda  
- **Animaciones:**
  - Idle
  - Waiting  
  - Caminar (izq/der/frente/espalda)  
  - Agacharse y andar agachado (sigilo)
  - Interacción (abrir puerta, recoger objetos)

  - Correr?
  - Tumbarse y arrastrarse?
  - Empujar?
  

## Entorno / Escenario

- **Aspect ratio:** 16:9  
- **Resolución:** 320×180 px
- **Escalado:** Pixel perfect (x4, x5, etc.)  
- **Capas de profundidad:** UI, foreground, midground (personajes y objetos), background, far background  
- **Tipos de tiles o bloques:** suelo, paredes, plataformas, escaleras  

## Mecánicas de juego

- **Narrativa:** Texto (sin voces) excepto en cinemáticas  
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

## Objetos clave

- Linterna  
- Llaves de salas secretas  
- Objetos o dinero para sobornar a NPCs  
- Documentos: archivos oficiales C.O.A.C y anotaciones a mano con pistas, códigos y localizaciones  

---

# Producto Mínimo Viable (PMV)

## Contenido
- Cinemáticas de introducción
- Presentación del mundo (C.O.A.C.)
- Introducción al sigilo  (Cumpleaños de Rafael? -> se quiere colar en algun sitio como celebración)
- Primer punto de giro (Fallece la anciana y te entrega la nota)
- Lees la nota mirando por la ventana de tu habitación, se ve como el holograma de la ciudad glitchea y termina la demo

## Desarrollo Narrativo

**Acto 1 – Rutina**  
- Zona común del centro (aula, comedor, pasillo, dormitorio)  
- Ciclo día/noche básico  
- Interacción con 2–3 NPCs  
- Primeras dudas sobre la catástrofe  (muy light)
- Introducción al sistema de documentos  

**Acto 2 – Primera Infiltración Nocturna**  
- Zona restringida pequeña (archivo o despacho)  
- 1–2 guardias con patrón simple  
- Introducción al sigilo: cono de visión, ruido, agacharse, oscuridad
- Presentación del proyecto secreto GADIR (Rafael no llega a leer nada porque casi lo descubren)

**Punto de Giro:** muerte de la anciana y nota que invita a buscar la verdad  
**Cierre:** Rafael mirando por la ventana; simulación glitchea; pantalla en negro  

---

## Mapa Mínimo Necesario

- Dormitorio  
- Pasillo principal  
- Comedor / zona común
- Aula
- Oficina administrativa (restringida)  
- Archivo confidencial  
- Habitación de la anciana/ hospital  

---

## Mecánicas Incluidas en el PMV

- Movimiento 4 ejes  
- Sistema básico de sigilo  
- 1 tipo de guardia  
- 1 objeto clave: linterna  
- Inventario simple  
- Sistema de documentos  
- Transiciones entre salas    

**Mecánicas excluidas para PMV:** sobornos, economía compleja, persecuciones, tumbarse, múltiples tipos de enemigos, sistema avanzado de ruido e iluminación, mapa grande  

---

## Assets Mínimos

**Personajes:** Rafael, anciana, 1 guardia, 2 NPC genéricos  

**UI:** HUD simple con slot linterna, texto de interacción, menú de documentos
