# Producto «12 Guardians» — imagen con texto en español (EN / Shopify Payments)

## Qué necesitamos de su lado

### Opción A — Imagen distinta por mercado (recomendada si mantienen copy en la pieza)

1. **Arte final en inglés** (misma composición o nueva): archivo **PNG o JPG**, mínimo **2000 px** de ancho, optimizado para web (ideal menor a 500 KB).
2. En **Shopify Admin → Productos → [producto 12 guardians] → Medios**: subir la versión EN y asignarla como **imagen para el mercado de inglés** (Markets → contenido por mercado / «Editar contenido por mercado» según su flujo).
3. Confirmar el **handle** del producto (ej. `12-guardians` o el que usen) para que podamos documentar overrides en tema si hiciera falta.

### Opción B — Imagen neutra (más rápida para compliance)

1. Una **sola imagen sin texto** (solo fotografía o ilustración de las piezas).
2. El texto tipo «12 channeled guardians…» pasa a **título o bloque traducible** en el template de producto / descripción — así EN/ES salen de `locales` o del editor sin rehacer arte.

## Qué hace el tema desde código

- No podemos «traducir» texto rasterizado en la foto: o cambia el archivo, o el texto sale en HTML traducible.
- Si eligen A y suben el asset, **no hace falta** commit en el repo salvo que quieran referencia en JSON de sección promocional.
