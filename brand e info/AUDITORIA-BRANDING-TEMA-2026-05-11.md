# Auditoría de branding — tema Online Store (solo inventario)

Criterios (resumen): voz mística y real, premium; **no** esotérico genérico ni «bot».  
**Prohibido:** muñeco, producto (en copy de marca), comprar.  
**Preferido:** canalizar, adoptar, ser elemental, guardián.

**Alcance revisado:** `locales/es.json`, `locales/en.default.json` (muestras), `sections/*.liquid`, `snippets/*.liquid`, `templates/*.json` del tema raíz (excl. `shopify-maestro/`, `install /`, copias).

---

## 1) Palabras prohibidas o sensibles

| Ubicación | Tipo | Nota |
|-----------|------|------|
| `locales/es.json` — claves `accessibility.*`, `templates.*` (tema Horizon) | `producto` / `productos` | Texto **plataforma Shopify** (accesibilidad, carrito, etc.). No es copy de marca en landing; conviene **no** reemplazar salvo que traduzcan todo el tema a terminología «adopción» (riesgo: romper accesibilidad legal). |
| Búsqueda `muñeco`, `comprar`, `DHL` en el tema activo raíz | Sin coincidencias en JSON/Liquid principales | **Producción** (fetch 2026-05-11) aún mostraba **DHL** en textos de home — probablemente **personalización en el editor** o tema publicado distinto al repo; alinear al publicar este repo. |

---

## 2) Candidatos a «IA genérica» / cliché new age (subjetivo)

Revisión por muestreo de frases muy amplias en `locales` y secciones Duendes (no exhaustivo):

- Cualquier string con **«el universo elige»**, **«energía»** repetida en exceso, **«sagrado»** en cadena larga sin ancla concreta (taller, Piriápolis, plazo) — marcar en revisión humana cuando lean `sections/duendes-*.liquid` y bloques JSON de home.
- **Recomendación:** pasar un segundo filtro humano solo en strings **visibles en home y checkout** (no en metadatos de editor).

---

## 3) Menciones DHL residuales

| Dónde | Estado |
|-------|--------|
| Repo `templates/index*.json` (raíz tema) | **No** aparece `DHL` en búsqueda actual. |
| **Producción** `duendesdeluruguay.com` (HTML servido) | Sí: franja tipo anuncio y copy de envío/CTA aún citan **DHL Express** → **actualizar en Admin** (secciones home / traducciones) o publicar tema sincronizado con JSON sin DHL. |

---

## 4) Información factual (envíos, plazos)

| Riesgo | Acción sugerida |
|--------|-----------------|
| Diferencias entre **DAC**, **tracking**, **días hábiles** en distintas secciones | Unificar una sola fuente en `locales` (`duendes.global` o claves `duendes.shipping_*`) y referenciar desde secciones. |
| Producción mezcla «DHL» con mensajes nuevos de tracking | Corregir contenido **live** para que coincida con política real y con lo aprobado para Shopify Payments. |

---

## 5) Próximo paso

Este archivo es **solo inventario**. Las correcciones de copy las deciden ustedes; el repo puede ir alineando `locales` y `templates` cuando cierren criterio.
