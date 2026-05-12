# Customizer — pendientes manuales

## Texto «DHL Express» en la franja de anuncios

En el **JSON del tema en repo**, `config/settings_data.json` **no contiene** la cadena `DHL Express` (tampoco tras `shopify theme pull` del theme `#134967361633`). El mensaje internacional correcto para el marcador de posición está en **`templates/index.json`**: bloque `msg-1` con texto `[ddu:announcement_intl]`, resuelto vía `sections/duendes-announcement-bar.liquid` hacia `duendes.global.announcement_bar` en **`locales/es.json`**.

Si en **producción** sigue apareciendo «DHL Express…»:

1. **Personalizar tema** → revisá **todas** las franjas de anuncio (p. ej. sección del grupo **Header** tipo *header-announcements* y la sección **Duendes — announcement bar** en la home) y reemplazá el texto fijo por el marcador `[ddu:announcement_intl]` o por la frase acordada **sin** mencionar DHL.
2. Si el editor muestra valores distintos al JSON del repo, hacé **Guardar** en el theme o volvé a publicar tras un push del `templates/index.json` y `locales/es.json` alineados.

## Orden «header» y «footer» en la home

En **Horizon**, el **header** se renderiza desde **`sections/header-group.json`** (`{% sections 'header-group' %}` en `layout/theme.liquid`), no como entrada en `templates/index.json`. El bloque **`duendes-footer-rich`** está en **`sections/footer-group.json`**. No duplicamos esas piezas en `index.json` para evitar doble header/footer.
