# El Portal (`/pages/el-portal`) — pasos en Shopify Admin

El theme incluye la plantilla **`page.el-portal`** y la sección **`duendes-el-portal`**. Hasta que exista la página en Admin, la URL devuelve **404**.

## Crear la página

1. **Admin → Contenido → Páginas → Agregar página**.
2. **Título:** `El Portal ✦` (o el título que prefieras visible en pestaña y SEO).
3. **Contenido del editor:** opcional; el diseño lo aporta casi todo la sección del theme.
4. **Manejo de URL (handle):** `el-portal` — debe quedar exactamente `el-portal` para que la ruta sea `https://TU-DOMINIO/pages/el-portal`.
5. En la barra lateral derecha, **Plantilla de tema:** elegí **`page.el-portal`** (a veces aparece como *el-portal* o *page.el-portal* según la versión del editor).
6. **Guardar** y abrir en incógnito: `/pages/el-portal` debe cargar el portal (vista de invitado si no hay sesión).

## SEO y menús

- Asigná metadescripción si querés control fino en buscadores.
- Actualizá enlaces del menú que aún apunten a `/pages/mi-magia` o al blog viejo para que usen **`/pages/el-portal`** donde corresponda.

## Servicios premium en la sección

- El bloque **Canalización Álmica** solo se muestra a clientes con **`total_spent`** ≥ umbral (por defecto **200000** en subunidad de moneda, p. ej. centavos USD) o con la etiqueta configurada (por defecto **`portal-servicios-premium`**).
- Si tu moneda no usa centavos de la misma forma, ajustá el número en el editor del theme (sección El Portal) o usá solo la etiqueta en clientes elegidos.
