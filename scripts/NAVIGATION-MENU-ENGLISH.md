# Main menu in English (production)

Los ítems del **Main menu** viven en **Admin → Online store → Navigation** (no en `locales` del tema). Para que el mercado EN muestre títulos en inglés, usá una de estas rutas.

## Opción A — Translate & Adapt (recomendada si ya la usan)

1. **Apps → Translate & Adapt** (o **Settings → Languages** y entrar a la app).
2. **Translate** / **Traducir** → buscá **Menus** / **Menús** → **Main menu** (o el handle que usen, ej. `main-menu`).
3. Elegí el idioma **English** y completá la columna EN para cada enlace (el texto base suele ser el español del menú).
4. **Publicar** cambios de traducción.

Mapeo sugerido (ES → EN):

| Español (base) | English |
|----------------|---------|
| Inicio | Home |
| Tienda Mágica | Magic Shop |
| Test del Guardián | Guardian Test |
| Cómo Funciona | How It Works |
| Comunidad Elemental | Elemental Community |
| Mi Magia ✦ | My Magic ✦ |
| Nuestra Historia | Our Story |
| Testimonios | Testimonials |
| Señales | Signs |
| Preguntas Frecuentes | FAQ |
| Contacto | Contact |

5. En **Settings → Markets**, confirmá que el mercado inglés usa **English** como idioma de contenido / storefront según su configuración.

## Opción B — Menú duplicado solo EN (sin app)

1. **Navigation → Add menu** → nombre `Main menu (EN)` o similar.
2. Crear los mismos enlaces que el menú ES pero con títulos EN (misma URL que el menú español).
3. En el **theme editor**, en el bloque del header, si el tema permite elegir menú por mercado, asignar ese menú al mercado EN.  
   Si Horizon no lo expone por mercado, suele hacer falta **liquid condicional** por `localization.language.iso_code` (lo podemos implementar en otra tarea).

## Opción C — Admin API (script)

Ver `scripts/register-main-menu-en.mjs`. Requiere un **Custom app** en Admin con scopes típicos:

- `read_online_store_navigation`
- `write_online_store_navigation`  
  y/o scopes de traducción: `read_translations`, `write_translations` (según la API que use Shopify para menús en su plan).

El script intenta listar recursos traducibles y registrar textos EN; si la API devuelve error de scope o tipo de recurso, usá A o B.

## Shopify Inbox — badge “1”

- **Opción 1 (recomendada):** **Apps → Shopify Inbox → Uninstall**. Los **historiales de chat** suelen conservarse un tiempo en los servidores de Shopify según política de la app; no dependen del embed en el tema. Para archivo/export, revisá la app antes de desinstalar.
- **Opción 2:** **Online store → Themes → Customize → App embeds** → Inbox → **off** (el tema en repo ya no incluye el bloque de Inbox en `config/settings_data.json`).

## CDN / texto viejo (DHL, menú)

Tras publicar el tema y corregir SEO en Admin:

- Forzá recarga con query `?preview_theme_id=` o probá en ventana incógnito.
- **Online store → Themes → … → Edit default theme content** y revisá descripciones meta / home que sigan en caché del editor.
- Shopify CDN puede cachear HTML brevemente; si persiste texto antiguo, **guardá de nuevo** la sección afectada o publicá una micro-cambio en el tema.
